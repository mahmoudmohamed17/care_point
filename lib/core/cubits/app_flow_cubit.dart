import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../routing/app_routes.dart';
import 'app_flow_state.dart';

@Singleton()
class AppFlowCubit extends HydratedCubit<AppFlowState> {
  AppFlowCubit() : super(AppFlowState.splash);

  static const String _stateKey = 'flow_state';

  String get targetRoute {
    switch (state) {
      case AppFlowState.splash:
        return AppRoutes.splash;
      case AppFlowState.onboarding:
        return AppRoutes.onboarding;
      case AppFlowState.mainShell:
        return AppRoutes.home;
    }
  }

  /// Resolves redirection logic based on current `AppFlowState` and `currentPath`.
  ///
  /// Covers all flow scenarios:
  /// - Splash screen: returns `null` so splash animations/initialization can finish.
  /// - [AppFlowState.login]: guards all other routes and redirects to login (or allows signup).
  /// - [AppFlowState.mainShell]: guards auth routes and redirects to home.
  String? resolveRedirect(String currentPath) {
    switch (state) {
      // Always show the splash screen
      case AppFlowState.splash when currentPath == AppRoutes.splash:
        return null;

      // Guard: onboarding not done → always land on onboarding.
      case AppFlowState.onboarding when currentPath != AppRoutes.onboarding:
        return AppRoutes.onboarding;

      // Guard: onboarding done → never show onboarding again.
      case AppFlowState.mainShell when currentPath == AppRoutes.onboarding:
        return AppRoutes.mainShell;

      // no redirect needed
      default:
        return null;
    }
  }

  void completeOnboarding() {
    emit(AppFlowState.mainShell);
  }

  // TODO: Delete this later
  void returnToOnboarding() {
    emit(AppFlowState.onboarding);
  }

  @override
  AppFlowState? fromJson(Map<String, dynamic> json) {
    try {
      final stateName = json[_stateKey] as String?;
      if (stateName != null) {
        return AppFlowState.values.byName(stateName);
      }
    } catch (_) {}
    return null;
  }

  @override
  Map<String, dynamic>? toJson(AppFlowState state) {
    return {_stateKey: state.name};
  }
}
