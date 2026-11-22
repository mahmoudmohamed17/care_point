import 'app_strings.dart';

/// Every method returns a translation KEY (or null when valid).
/// Translate at the call site: `Validators.validateEmail(v)?.tr()`
abstract final class Validators {
  static const int minPasswordLength = 8;
  static const int minNameLength = 2;

  static final RegExp _emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp _phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');

  /// Not null, empty, or whitespace only.
  static String? validateRequired(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppStrings.validationRequired;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final requiredError = validateRequired(value);
    if (requiredError != null) return requiredError;

    if (!_emailRegex.hasMatch(value!.trim())) {
      return AppStrings.validationInvalidEmail;
    }
    return null;
  }

  /// Use only on register / change-password, not on login.
  /// The password is intentionally NOT trimmed.
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return AppStrings.validationRequired;

    if (value.length < minPasswordLength) {
      return AppStrings.validationPasswordTooShort;
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? original) {
    if (value == null || value.isEmpty) return AppStrings.validationRequired;

    if (value != original) return AppStrings.validationPasswordsDontMatch;
    return null;
  }

  /// Optional leading `+`, 10 to 15 digits. Accepts Arabic-Indic digits.
  static String? validatePhone(String? value) {
    final requiredError = validateRequired(value);
    if (requiredError != null) return requiredError;

    final normalized = toWesternDigits(value!).replaceAll(RegExp(r'[\s\-()]'), '');
    if (!_phoneRegex.hasMatch(normalized)) {
      return AppStrings.validationInvalidPhone;
    }
    return null;
  }

  static String? validateName(String? value) {
    final requiredError = validateRequired(value);
    if (requiredError != null) return requiredError;

    if (value!.trim().length < minNameLength) {
      return AppStrings.validationInvalidName;
    }
    return null;
  }

  /// Public so you can normalize the phone before saving it to Supabase.
  static String toWesternDigits(String input) {
    const arabicIndic = '٠١٢٣٤٥٦٧٨٩';
    var result = input;
    for (var i = 0; i < arabicIndic.length; i++) {
      result = result.replaceAll(arabicIndic[i], '$i');
    }
    return result;
  }
}
