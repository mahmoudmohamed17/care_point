import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconTile extends StatefulWidget {
  final Widget icon;
  final Color? backgroundColor;
  final double radius;
  final double padding;
  final VoidCallback? onTap;

  const new({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.radius = 16,
    this.padding = 16,
    this.onTap,
  });

  @override
  State<IconTile> createState() => _IconTileState();
}

class _IconTileState extends State<IconTile> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 350),
  );

  late final Animation<double> _scale = TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween(begin: 1.0, end: 1.25).chain(CurveTween(curve: Curves.easeOut)),
      weight: 35,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 1.25, end: 0.95).chain(CurveTween(curve: Curves.easeInOut)),
      weight: 35,
    ),
    TweenSequenceItem(
      tween: Tween(begin: 0.95, end: 1.0).chain(CurveTween(curve: Curves.easeOut)),
      weight: 30,
    ),
  ]).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller.forward(from: 0); // restarts if tapped again mid-animation
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _scale,
        builder: (context, child) {
          return Transform.scale(scale: _scale.value, child: child);
        },
        child: Container(
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.radius.r),
          ),
          padding: EdgeInsets.all(widget.padding.w),
          child: widget.icon,
        ),
      ),
    );
  }
}
