import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_text_field.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/specialties_list.dart';
import 'widgets/upcoming_appointments.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              const HomeAppBar(),
              24.verticalSpace,
              // TODO: apply an animation when tapping this widget
              CustomTextField(
                hint: AppStrings.homeSearchHint,
                prefixIcon: SvgPicture.asset(
                  AppIcons.searchLight,
                  height: 20.h,
                  width: 20.w,
                ),
              ),
              24.verticalSpace,
              const SpecialtiesList(),
              24.verticalSpace,
              const UpcomingAppointments(),
            ],
          ),
        ),
      ),
    );
  }
}
