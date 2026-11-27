import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/app_strings.dart';

class SpecialtyModel {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final FaIconData icon;

  new({
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
  });

  static List<SpecialtyModel> get specialties {
    return [
      SpecialtyModel(
        label: AppStrings.homeSpecialtyCardiology,
        backgroundColor: const Color(0xffE6F6F5),
        foregroundColor: const Color(0xff187874),
        icon: FontAwesomeIcons.heartPulse,
      ),
      SpecialtyModel(
        label: AppStrings.homeSpecialtyDermatology,
        backgroundColor: const Color(0xffEFEFFF),
        foregroundColor: const Color(0xff4D44E5),
        icon: FontAwesomeIcons.user,
      ),
      SpecialtyModel(
        label: AppStrings.homeSpecialtyPediatrics,
        backgroundColor: const Color(0xffFFF7E5),
        foregroundColor: const Color(0xffB65810),
        icon: FontAwesomeIcons.userGroup,
      ),
      SpecialtyModel(
        label: AppStrings.homeSpecialtyDentistry,
        backgroundColor: const Color(0xffFEF0F0),
        foregroundColor: const Color(0xffB61313),
        icon: FontAwesomeIcons.stethoscope,
      ),
    ];
  }
}
