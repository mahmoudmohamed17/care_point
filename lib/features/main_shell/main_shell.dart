import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_ui/material_ui.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../core/utils/app_strings.dart';
import '../../core/utils/extensions.dart';

class MainShell extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final Color activeColor = context.colorScheme.onPrimaryContainer;
    final Color inactiveColor = context.colorScheme.outline;

    return PersistentTabView(
      tabs: [
        _tab(
          context,
          screen: (context) => const Placeholder(),
          icon: const FaIcon(FontAwesomeIcons.house),
          title: AppStrings.navHome,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
        _tab(
          context,
          screen: (context) => const Placeholder(),
          icon: const FaIcon(FontAwesomeIcons.stethoscope),
          title: AppStrings.navDoctors,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
        _tab(
          context,
          screen: (context) => const Placeholder(),
          icon: const FaIcon(FontAwesomeIcons.calendarDays),
          title: AppStrings.navAppointments,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
        _tab(
          context,
          screen: (context) => const Placeholder(),
          icon: const FaIcon(FontAwesomeIcons.user),
          title: AppStrings.navProfile,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
        ),
      ],
      navBarBuilder: (navBarConfig) => Style6BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          padding: EdgeInsets.symmetric(vertical: 16.h),
        ),
      ),
    );
  }

  PersistentTabConfig _tab(
    BuildContext context, {
    required Widget Function(BuildContext context) screen,
    required Widget icon,
    required String title,
    Color activeColor = Colors.black,
    Color inactiveColor = Colors.black,
  }) {
    return PersistentTabConfig(
      screen: SafeArea(child: screen(context)),
      item: ItemConfig(
        icon: icon,
        iconSize: 22.sp,
        title: context.tr(title),
        textStyle: context.textTheme.labelSmall!,
        activeForegroundColor: activeColor,
        inactiveForegroundColor: inactiveColor,
      ),
    );
  }
}
