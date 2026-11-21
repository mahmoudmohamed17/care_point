import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

/// CarePoint typography.
/// English: Inter. Arabic: Cairo.
///
/// Core scale:  H1 24/700 · H2 18/600 · Body 14/400 · Caption 12/500
/// Declare both families in pubspec.yaml under `flutter: fonts:`.
abstract final class AppTypography {
  static const String fontFamily = 'Inter';
  static const String arabicFontFamily = 'Cairo';

  static TextTheme build({bool isArabic = false}) {
    // Arabic glyphs read smaller and need more vertical room.
    final double k = isArabic ? 1.06 : 1.0;
    final double bodyH = isArabic ? 1.7 : 1.5;
    final double titleH = isArabic ? 1.5 : 1.3;

    TextStyle style(
      double size,
      FontWeight w, {
      double? height,
      double? letterSpacing,
    }) => TextStyle(
      fontFamily: isArabic ? arabicFontFamily : fontFamily,
      fontSize: size.sp * k,
      fontWeight: w,
      height: height,
      // Letter spacing breaks Arabic letter joining.
      letterSpacing: isArabic ? null : letterSpacing?.sp,
    );

    return TextTheme(
      // Display: rare hero text
      displayLarge: style(32, FontWeight.w700, height: titleH),
      displayMedium: style(28, FontWeight.w700, height: titleH),
      displaySmall: style(24, FontWeight.w700, height: titleH),

      // Headline: headlineLarge = H1 (24/700), headlineSmall = H2 (18/600)
      headlineLarge: style(24, FontWeight.w700, height: titleH),
      headlineMedium: style(20, FontWeight.w600, height: titleH),
      headlineSmall: style(18, FontWeight.w600, height: titleH),

      // Title: card headers, dialog titles, list item titles
      titleLarge: style(18, FontWeight.w600, height: titleH),
      titleMedium: style(16, FontWeight.w600, height: titleH),
      titleSmall: style(14, FontWeight.w600, height: titleH),

      // Body: bodyMedium = Body (14/400)
      bodyLarge: style(16, FontWeight.w400, height: bodyH),
      bodyMedium: style(14, FontWeight.w400, height: bodyH),
      bodySmall: style(12, FontWeight.w400, height: bodyH),

      // Label: labelLarge = buttons, labelMedium = Caption (12/500)
      labelLarge: style(14, FontWeight.w600, height: titleH),
      labelMedium: style(12, FontWeight.w500, height: titleH),
      labelSmall: style(11, FontWeight.w500, height: titleH, letterSpacing: 0.3),
    );
  }
}
