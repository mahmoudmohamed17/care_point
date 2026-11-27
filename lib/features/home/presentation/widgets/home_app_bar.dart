import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/extensions.dart';

class HomeAppBar extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        context.tr(
          AppStrings.homeGreetingMorning,
          namedArgs: {'name': 'Mahmoud'},
        ),
        style: context.textTheme.labelLarge?.copyWith(
          color: context.colorScheme.outline,
        ),
      ),
      subtitle: Text(
        context.tr(AppStrings.homeHowAreYou),
        style: context.textTheme.titleMedium,
      ),
      trailing: GestureDetector(
        onTap: () {
          // TODO: Navigates to the Notificatios screen
        },
        child: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(14),
          child: FaIcon(
            FontAwesomeIcons.bell,
            size: 20.sp,
          ),
        ),
      ),
    );
  }
}
