import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/extensions.dart';
import '../../domain/models/specialty_model.dart';

class SpecialtiesList extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.tr(AppStrings.homeSpecialties),
              style: context.textTheme.titleMedium,
            ),
            GestureDetector(
              onTap: () {
                // TODO: View all specialties
              },
              child: Text(
                context.tr(AppStrings.commonSeeAll),
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            spacing: 18,
            children: SpecialtyModel.specialties.map(
              (item) {
                return GestureDetector(
                  onTap: () {
                    // TODO: Search with each specialty
                  },
                  child: _SpecialtyItem(model: item),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}

class _SpecialtyItem extends StatelessWidget {
  final SpecialtyModel model;

  const new({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        Container(
          decoration: BoxDecoration(
            color: model.backgroundColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          height: 70.h,
          width: 70.w,
          alignment: Alignment.center,
          child: FaIcon(
            model.icon,
            color: model.foregroundColor,
          ),
        ),
        Text(
          context.tr(model.label),
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }
}
