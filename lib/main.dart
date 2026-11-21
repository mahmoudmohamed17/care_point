import 'package:easy_localization/easy_localization.dart';
import 'package:material_ui/material_ui.dart';

import 'core/utils/locale_manager.dart';
import 'my_app.dart';

void main() {
  runApp(
    EasyLocalization(
      path: LocaleManager.translationPath,
      supportedLocales: LocaleManager.supportedLocales,
      startLocale: LocaleManager.initialLocale,
      fallbackLocale: LocaleManager.fallbackLocale,
      child: const MyApp(),
    ),
  );
}
