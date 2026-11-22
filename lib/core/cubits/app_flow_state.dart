enum AppFlowState {
  // Show it everytime to the user
  splash,

  /// User has not completed onboarding yet.
  onboarding,

  /// User has completed onboarding and should land on home.
  home,
}
