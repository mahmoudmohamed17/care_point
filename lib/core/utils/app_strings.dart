class AppStrings {
  AppStrings._();

  // Common
  static const String appName = 'App Name';

  // ───────────────────────── Form validation ─────────────────────────

  // Validation messages shown under text fields
  static const String fieldRequired = 'This field is required';
  static const String invalidEmail = 'Please enter a valid email address';
  static const String invalidPhone = 'Please enter a valid phone number';
  static const String nameTooShort = 'Name must be at least 3 characters';
  static const String passwordTooShort = 'Password must be at least 8 characters';
  static const String passwordNeedsNumber = 'Password must include at least one number';
  static const String passwordNeedsUppercase = 'Password must include at least one uppercase letter';
  static const String passwordNeedsSpecialChar = 'Password must include at least one special character';
  static const String passwordsDontMatch = 'Passwords do not match';
  static String minLength(String fieldName, int min) => '$fieldName must be at least $min characters';
}
