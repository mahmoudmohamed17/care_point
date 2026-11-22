import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, this.onFinished});

  /// Called after the exit animation completes (navigate from here).
  final VoidCallback? onFinished;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  static const _holdDuration = Duration(milliseconds: 1200);

  late final AnimationController _enter = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1800),
  );

  late final AnimationController _exit = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 800),
  );

  // Logo
  late final Animation<double> _logoIn = _in(0.15, 1.0, Curves.elasticOut);
  late final Animation<double> _logoFadeIn = _in(0.15, 0.4, Curves.easeOut);
  late final Animation<double> _logoOut = _out(0.0, 0.8, Curves.easeInBack);
  late final Animation<double> _logoFadeOut = _out(0.3, 0.8, Curves.easeIn);

  // Half circles (staggered in, reverse-staggered out)
  late final Animation<double> _topRightIn = _in(0.00, 0.55, Curves.easeOutCubic);
  late final Animation<double> _leftIn = _in(0.10, 0.65, Curves.easeOutCubic);
  late final Animation<double> _bottomRightIn = _in(0.20, 0.75, Curves.easeOutCubic);

  late final Animation<double> _topRightOut = _out(0.20, 1.0, Curves.easeInCubic);
  late final Animation<double> _leftOut = _out(0.10, 0.90, Curves.easeInCubic);
  late final Animation<double> _bottomRightOut = _out(0.00, 0.80, Curves.easeInCubic);

  Animation<double> _in(double begin, double end, Curve curve) =>
      CurvedAnimation(
        parent: _enter,
        curve: Interval(begin, end, curve: curve),
      );

  Animation<double> _out(double begin, double end, Curve curve) =>
      CurvedAnimation(
        parent: _exit,
        curve: Interval(begin, end, curve: curve),
      );

  @override
  void initState() {
    super.initState();
    _run();
  }

  Future<void> _run() async {
    await _enter.forward();
    await Future<void>.delayed(_holdDuration);
    if (!mounted) return;
    await _exit.forward();
    if (!mounted) return;
    widget.onFinished?.call();
  }

  @override
  void dispose() {
    _enter.dispose();
    _exit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      body: Stack(
        children: [
          Align(
            child: AnimatedBuilder(
              animation: Listenable.merge([_enter, _exit]),
              builder: (context, child) {
                final scale =
                    (_logoIn.value * (1 - _logoOut.value)).clamp(0.0, 2.0);
                final opacity =
                    (_logoFadeIn.value * (1 - _logoFadeOut.value))
                        .clamp(0.0, 1.0);

                return Opacity(
                  opacity: opacity,
                  child: Transform.scale(scale: scale, child: child),
                );
              },
              child: Image.asset(
                AppImages.splash,
                height: 300,
                width: 300,
              ),
            ),
          ),

          _HalfCircle(
            enter: _topRightIn,
            exit: _topRightOut,
            slideFrom: const Offset(1, -0.5),
            dimensions: const PositionedDimensions(top: 0, right: -120),
            quarterTurns: -1,
            height: 200,
            width: 200,
          ),

          _HalfCircle(
            enter: _leftIn,
            exit: _leftOut,
            slideFrom: const Offset(-1, 0),
            dimensions: const PositionedDimensions(
              left: -120,
              top: 0,
              bottom: 0,
            ),
            quarterTurns: 1,
            height: 200,
            width: 200,
          ),

          _HalfCircle(
            enter: _bottomRightIn,
            exit: _bottomRightOut,
            slideFrom: const Offset(1, 0.5),
            dimensions: const PositionedDimensions(bottom: 0, right: -120),
            quarterTurns: -1,
            height: 200,
            width: 200,
          ),
        ],
      ),
    );
  }
}

class _HalfCircle extends StatelessWidget {
  const _HalfCircle({
    required this.dimensions,
    required this.enter,
    required this.exit,
    required this.slideFrom,
    this.width = 150,
    this.height = 150,
    this.quarterTurns = 0,
  });

  final double width;
  final double height;
  final int quarterTurns;
  final PositionedDimensions dimensions;

  /// 0 -> 1 while entering.
  final Animation<double> enter;

  /// 0 -> 1 while exiting.
  final Animation<double> exit;

  /// Direction it slides from / to, in units of the shape's size.
  final Offset slideFrom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: dimensions.top?.h,
      bottom: dimensions.bottom?.h,
      right: dimensions.right?.w,
      left: dimensions.left?.w,
      child: AnimatedBuilder(
        animation: Listenable.merge([enter, exit]),
        builder: (context, child) {
          // 1 = fully hidden, 0 = fully visible
          final hidden = ((1 - enter.value) + exit.value).clamp(0.0, 1.0);
          final opacity = (enter.value * (1 - exit.value)).clamp(0.0, 1.0);

          return Opacity(
            opacity: opacity,
            child: Transform.translate(
              offset: Offset(
                slideFrom.dx * width.w * hidden,
                slideFrom.dy * height.h * hidden,
              ),
              child: Transform.rotate(
                angle: hidden * 0.35 * (slideFrom.dx >= 0 ? 1 : -1),
                child: child,
              ),
            ),
          );
        },
        child: RotatedBox(
          quarterTurns: quarterTurns,
          child: SvgPicture.asset(
            AppImages.halfCircleFrame,
            height: height.h,
            width: width.w,
          ),
        ),
      ),
    );
  }
}

class PositionedDimensions {
  const PositionedDimensions({
    this.top,
    this.bottom,
    this.right,
    this.left,
  });

  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
}