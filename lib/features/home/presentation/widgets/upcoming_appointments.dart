import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_ui/material_ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/extensions.dart';

class UpcomingAppointments extends StatefulWidget {
  const new({super.key});

  @override
  State<UpcomingAppointments> createState() => _UpcomingAppointmentsState();
}

class _UpcomingAppointmentsState extends State<UpcomingAppointments> {
  final List<Widget> _items = List.generate(1, (_) => const _AppointmentItem());
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: [
        Text(
          context.tr(AppStrings.homeUpcomingAppointment),
          style: context.textTheme.titleMedium,
        ),
        CarouselSlider.builder(
          itemCount: _items.length,
          itemBuilder: (context, index, _) => _items[index],
          options: CarouselOptions(
            height: 120.h,
            onPageChanged: (index, reason) => _currentIndex.value = index,
            viewportFraction: 0.90,
            clipBehavior: Clip.none,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
          ),
        ),
        Center(
          child: ValueListenableBuilder(
            valueListenable: _currentIndex,
            builder: (context, index, child) {
              return AnimatedSmoothIndicator(
                activeIndex: index,
                count: _items.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                  activeDotColor: context.colorScheme.onPrimaryContainer,
                  dotColor: context.colorScheme.outlineVariant,
                  spacing: 8,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AppointmentItem extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Stack(
        children: [
          // Decoration circle frame
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: SvgPicture.asset(
              AppImages.quarterCircleFrame,
            ),
          ),

          // Card info
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              spacing: 12,
              children: [
                // Date badge
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  height: 70.h,
                  width: 60.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Text(
                        '24',
                        style: context.textTheme.displaySmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer,
                        ),
                      ),
                      Text(
                        'JUN',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                // Appointment info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dr. Ahmed Mostafa Kamel',
                        style: context.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      6.verticalSpace,
                      Text(
                        context.tr(AppStrings.homeSpecialtyCardiology),
                        style: context.textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      12.verticalSpace,
                      const Row(
                        spacing: 8,
                        children: [
                          _InfoItem(
                            icon: FontAwesomeIcons.clock,
                            label: '10:30 AM',
                          ),
                          _InfoItem(
                            icon: FontAwesomeIcons.locationDot,
                            label: 'New Cairo',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final FaIconData icon;
  final String label;

  const new({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        FaIcon(
          icon,
          size: 14.sp,
          color: Colors.white,
        ),
        Text(
          label,
          style: context.textTheme.labelSmall?.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
