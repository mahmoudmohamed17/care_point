import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../features/onboarding/presentation/onboarding_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../cubits/app_flow_cubit.dart';
import '../di/di.dart';
import 'app_routes.dart';
import 'go_router_listenable_builder.dart';
import 'page_transition_builder.dart';

class AppRouter {
  static final GoRouter router = _createRouter();

  static GoRouter _createRouter() {
    final appFlowCubit = getIt<AppFlowCubit>();

    return GoRouter(
      refreshListenable: GoRouterListenableBuilder(appFlowCubit.stream),
      redirect: (context, state) => appFlowCubit.resolveRedirect(state.matchedLocation),
      routes: [
        _route(
          AppRoutes.splash,
          builder: (context, state) => SplashScreen(
            onFinished: () {
              // Navigate to the Onboarding.
            },
          ),
        ),
        _route(
          AppRoutes.onboarding,
          builder: (context, state) => const OnboardingScreen(),
        ),
      ],
    );
  }

  static GoRoute _route(
    String path, {
    required Widget Function(BuildContext context, GoRouterState state) builder,
    String? Function(BuildContext context, GoRouterState state)? redirect,
    List<RouteBase> routes = const [],
    PageTransitionType transition = PageTransitionType.platformAdaptive,
  }) {
    return GoRoute(
      path: path,
      redirect: redirect,
      routes: routes,
      pageBuilder: (context, state) {
        final child = builder(context, state);
        return PageTransitionBuilder.build(
          child: child,
          key: state.pageKey,
          transition: transition,
        );
      },
    );
  }
}
