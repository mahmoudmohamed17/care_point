import 'package:material_ui/material_ui.dart';

/// Raw palette + Material 3 [ColorScheme]s for CarePoint.
///
/// Rule of thumb: widgets should read colors from `Theme.of(context)`
/// (`colorScheme`) or `context.appColors` — never from this class directly.
/// The raw constants exist so the theme layer has one source of truth.
abstract final class AppColors {
  // ── Brand ────────────────────────────────────────────────────────────────
  static const Color primary = Color(0xFF0E9F9A); // Teal
  static const Color primaryDark = Color(0xFF0A6F6B); // pressed / text on tint
  static const Color primaryTint = Color(0xFFE6F6F5); // soft teal backgrounds
  static const Color accent = Color(0xFF4F46E5); // Indigo

  // ── Status ───────────────────────────────────────────────────────────────
  static const Color success = Color(0xFF16A34A);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFDC2626);

  // ── Light neutrals ───────────────────────────────────────────────────────
  static const Color background = Color(0xFFF7F9FB);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color border = Color(0xFFE2E8F0);

  /// Input / control outline. Darker than [border] so fields keep >= 3:1
  /// contrast against the surface (WCAG 1.4.11).
  static const Color outline = Color(0xFF8494A8);

  // ── Dark neutrals ────────────────────────────────────────────────────────
  static const Color darkBg = Color(0xFF0B1220);
  static const Color darkSurface = Color(0xFF131C2E); // cards
  static const Color darkOverlay = Color(0xFF1C273D); // dialogs / sheets
  static const Color darkBorder = Color(0xFF2A3650);

  /// Modal scrim: rgba(15, 23, 42, 0.45)
  static const Color scrim = Color(0x730F172A);

  // ── Material 3 color schemes ─────────────────────────────────────────────
  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: primaryTint,
    onPrimaryContainer: primaryDark,
    secondary: accent,
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFEEF2FF),
    onSecondaryContainer: Color(0xFF3730A3),
    tertiary: primaryDark,
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFCDEEEC),
    onTertiaryContainer: Color(0xFF053836),
    error: error,
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFEE2E2),
    onErrorContainer: Color(0xFF7F1D1D),
    surface: background,
    onSurface: textPrimary,
    onSurfaceVariant: textSecondary,
    surfaceDim: Color(0xFFDDE3EA),
    surfaceBright: background,
    surfaceContainerLowest: surface,
    surfaceContainerLow: surface, // field fill (white + outline)
    surfaceContainer: Color(0xFFF1F5F9),
    surfaceContainerHigh: Color(0xFFEAEFF4),
    surfaceContainerHighest: border, // skeletons, tracks
    outline: outline,
    outlineVariant: border,
    shadow: textPrimary,
    scrim: Color(0xFF0F172A),
    inverseSurface: textPrimary,
    onInverseSurface: Color(0xFFF1F5F9),
    inversePrimary: Color(0xFF6FD8D3),
    surfaceTint: Colors.transparent, // no M3 tint overlay on elevation
  );

  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF2CC4BE),
    onPrimary: Color(0xFF032B29),
    primaryContainer: primaryDark,
    onPrimaryContainer: primaryTint,
    secondary: Color(0xFF9AA5FF),
    onSecondary: Color(0xFF1E1B6B),
    secondaryContainer: Color(0xFF3730A3),
    onSecondaryContainer: Color(0xFFE0E7FF),
    tertiary: Color(0xFF7ED9D4),
    onTertiary: Color(0xFF053836),
    tertiaryContainer: Color(0xFF0B524F),
    onTertiaryContainer: Color(0xFFCDEEEC),
    error: Color(0xFFF87171),
    onError: Color(0xFF450A0A),
    errorContainer: Color(0xFF7F1D1D),
    onErrorContainer: Color(0xFFFEE2E2),
    surface: darkBg,
    onSurface: Color(0xFFE2E8F0),
    onSurfaceVariant: Color(0xFF94A3B8),
    surfaceDim: Color(0xFF080E1A),
    surfaceBright: Color(0xFF26324A),
    surfaceContainerLowest: Color(0xFF080E1A),
    surfaceContainerLow: Color(0xFF101828),
    surfaceContainer: darkSurface,
    surfaceContainerHigh: Color(0xFF1A2438),
    surfaceContainerHighest: darkOverlay,
    outline: Color(0xFF7385A0),
    outlineVariant: darkBorder,
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFE2E8F0),
    onInverseSurface: darkBg,
    inversePrimary: primary,
    surfaceTint: Colors.transparent,
  );
}

/// Status colors (success / warning / info / danger).
///
/// * [main]        – icons, fills, borders (not guaranteed AA as small text).
/// * [text]        – AA-safe color for text on the page background.
/// * [container]   – soft banner / snackbar background.
/// * [onContainer] – text on [container].
@immutable
class AppStatusColors {
  const AppStatusColors({
    required this.main,
    required this.text,
    required this.container,
    required this.onContainer,
  });

  final Color main;
  final Color text;
  final Color container;
  final Color onContainer;
}

/// Colors for one appointment-status badge.
///
/// * [base]   – saturated color: dot, icon.
/// * [tint]   – badge background.
/// * [onTint] – badge text, AA-readable on [tint].
@immutable
class AppTagColors {
  const AppTagColors({
    required this.base,
    required this.tint,
    required this.onTint,
  });

  final Color base;
  final Color tint;
  final Color onTint;
}

/// Colors for one time-slot chip state.
@immutable
class AppSlotColors {
  const AppSlotColors({
    required this.background,
    required this.border,
    required this.foreground,
  });

  final Color background;
  final Color border;
  final Color foreground;
}

/// App-specific tokens that Material's [ColorScheme] has no slot for.
/// Access with `context.appColors`.
@immutable
class AppSemanticColors extends ThemeExtension<AppSemanticColors> {
  const AppSemanticColors({
    required this.success,
    required this.warning,
    required this.info,
    required this.danger,
    required this.overlaySurface,
    required this.pending,
    required this.confirmed,
    required this.completed,
    required this.cancelled,
    required this.rescheduled,
    required this.slotAvailable,
    required this.slotSelected,
    required this.slotBooked,
    required this.slotDisabled,
  });

  final AppStatusColors success;
  final AppStatusColors warning;

  /// Informational / accent emphasis (indigo).
  final AppStatusColors info;

  /// Destructive emphasis, e.g. cancel appointment.
  final AppStatusColors danger;

  /// Dialogs and bottom sheets.
  final Color overlaySurface;

  // Appointment status badges.
  final AppTagColors pending; // amber
  final AppTagColors confirmed; // teal
  final AppTagColors completed; // green
  final AppTagColors cancelled; // red
  final AppTagColors rescheduled; // indigo

  // Time-slot chips.
  final AppSlotColors slotAvailable;
  final AppSlotColors slotSelected;
  final AppSlotColors slotBooked;
  final AppSlotColors slotDisabled;

  static const AppSemanticColors light = AppSemanticColors(
    success: AppStatusColors(
      main: AppColors.success,
      text: Color(0xFF15803D),
      container: Color(0xFFDCFCE7),
      onContainer: Color(0xFF14532D),
    ),
    warning: AppStatusColors(
      main: AppColors.warning,
      text: Color(0xFF92400E),
      container: Color(0xFFFEF3C7),
      onContainer: Color(0xFF78350F),
    ),
    info: AppStatusColors(
      main: AppColors.accent,
      text: Color(0xFF4338CA),
      container: Color(0xFFEEF2FF),
      onContainer: Color(0xFF312E81),
    ),
    danger: AppStatusColors(
      main: AppColors.error,
      text: Color(0xFFB91C1C),
      container: Color(0xFFFEE2E2),
      onContainer: Color(0xFF7F1D1D),
    ),
    overlaySurface: AppColors.surface,
    pending: AppTagColors(
      base: AppColors.warning,
      tint: Color(0xFFFEF3C7),
      onTint: Color(0xFF92400E),
    ),
    confirmed: AppTagColors(
      base: AppColors.primary,
      tint: AppColors.primaryTint,
      onTint: AppColors.primaryDark,
    ),
    completed: AppTagColors(
      base: AppColors.success,
      tint: Color(0xFFDCFCE7),
      onTint: Color(0xFF15803D),
    ),
    cancelled: AppTagColors(
      base: AppColors.error,
      tint: Color(0xFFFEE2E2),
      onTint: Color(0xFFB91C1C),
    ),
    rescheduled: AppTagColors(
      base: AppColors.accent,
      tint: Color(0xFFEEF2FF),
      onTint: Color(0xFF4338CA),
    ),
    slotAvailable: AppSlotColors(
      background: AppColors.surface,
      border: AppColors.primary,
      foreground: AppColors.primaryDark,
    ),
    slotSelected: AppSlotColors(
      background: AppColors.primary,
      border: AppColors.primary,
      foreground: Color(0xFFFFFFFF),
    ),
    slotBooked: AppSlotColors(
      background: Color(0xFFF1F5F9),
      border: Color(0xFFF1F5F9),
      foreground: AppColors.textSecondary,
    ),
    slotDisabled: AppSlotColors(
      background: AppColors.surface,
      border: AppColors.border,
      foreground: Color(0xFFB4BFCD),
    ),
  );

  static const AppSemanticColors dark = AppSemanticColors(
    success: AppStatusColors(
      main: Color(0xFF4ADE80),
      text: Color(0xFF4ADE80),
      container: Color(0xFF0F3320),
      onContainer: Color(0xFFBBF7D0),
    ),
    warning: AppStatusColors(
      main: Color(0xFFFBBF24),
      text: Color(0xFFFCD34D),
      container: Color(0xFF3A2A08),
      onContainer: Color(0xFFFDE68A),
    ),
    info: AppStatusColors(
      main: Color(0xFF9AA5FF),
      text: Color(0xFFA5B4FC),
      container: Color(0xFF25226B),
      onContainer: Color(0xFFE0E7FF),
    ),
    danger: AppStatusColors(
      main: Color(0xFFF87171),
      text: Color(0xFFFCA5A5),
      container: Color(0xFF3F1414),
      onContainer: Color(0xFFFECACA),
    ),
    overlaySurface: AppColors.darkOverlay,
    pending: AppTagColors(
      base: Color(0xFFFBBF24),
      tint: Color(0xFF3A2A08),
      onTint: Color(0xFFFDE68A),
    ),
    confirmed: AppTagColors(
      base: Color(0xFF2CC4BE),
      tint: Color(0xFF0B3B39),
      onTint: Color(0xFF7ED9D4),
    ),
    completed: AppTagColors(
      base: Color(0xFF4ADE80),
      tint: Color(0xFF0F3320),
      onTint: Color(0xFFBBF7D0),
    ),
    cancelled: AppTagColors(
      base: Color(0xFFF87171),
      tint: Color(0xFF3F1414),
      onTint: Color(0xFFFECACA),
    ),
    rescheduled: AppTagColors(
      base: Color(0xFF9AA5FF),
      tint: Color(0xFF25226B),
      onTint: Color(0xFFE0E7FF),
    ),
    slotAvailable: AppSlotColors(
      background: AppColors.darkSurface,
      border: Color(0xFF2CC4BE),
      foreground: Color(0xFF7ED9D4),
    ),
    slotSelected: AppSlotColors(
      background: Color(0xFF2CC4BE),
      border: Color(0xFF2CC4BE),
      foreground: Color(0xFF032B29),
    ),
    slotBooked: AppSlotColors(
      background: Color(0xFF1A2438),
      border: Color(0xFF1A2438),
      foreground: Color(0xFF94A3B8),
    ),
    slotDisabled: AppSlotColors(
      background: AppColors.darkSurface,
      border: AppColors.darkBorder,
      foreground: Color(0xFF55657D),
    ),
  );

  @override
  AppSemanticColors copyWith({
    AppStatusColors? success,
    AppStatusColors? warning,
    AppStatusColors? info,
    AppStatusColors? danger,
    Color? overlaySurface,
    AppTagColors? pending,
    AppTagColors? confirmed,
    AppTagColors? completed,
    AppTagColors? cancelled,
    AppTagColors? rescheduled,
    AppSlotColors? slotAvailable,
    AppSlotColors? slotSelected,
    AppSlotColors? slotBooked,
    AppSlotColors? slotDisabled,
  }) {
    return AppSemanticColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      danger: danger ?? this.danger,
      overlaySurface: overlaySurface ?? this.overlaySurface,
      pending: pending ?? this.pending,
      confirmed: confirmed ?? this.confirmed,
      completed: completed ?? this.completed,
      cancelled: cancelled ?? this.cancelled,
      rescheduled: rescheduled ?? this.rescheduled,
      slotAvailable: slotAvailable ?? this.slotAvailable,
      slotSelected: slotSelected ?? this.slotSelected,
      slotBooked: slotBooked ?? this.slotBooked,
      slotDisabled: slotDisabled ?? this.slotDisabled,
    );
  }

  /// Theme switches snap at the midpoint; token groups are not interpolated.
  @override
  AppSemanticColors lerp(ThemeExtension<AppSemanticColors>? other, double t) {
    if (other is! AppSemanticColors) return this;
    return t < 0.5 ? this : other;
  }
}

extension AppColorsContext on BuildContext {
  /// Semantic (status, slot) colors for the current theme.
  AppSemanticColors get appColors => Theme.of(this).extension<AppSemanticColors>() ?? AppSemanticColors.light;
}
