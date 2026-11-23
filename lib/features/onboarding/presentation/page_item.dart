import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/utils/extensions.dart';
import '../domain/page_model.dart';

class PageItem extends StatelessWidget {
  final PageModel model;
  const PageItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          Expanded(
            child: SvgPicture.asset(
              model.imagePath,
            ),
          ),
          Text(
            context.tr(model.title),
            style: context.textTheme.titleLarge,
          ),
          Text(
            context.tr(model.subTitle),
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}
