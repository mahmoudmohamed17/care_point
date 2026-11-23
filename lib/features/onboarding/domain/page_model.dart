import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class PageModel {
  final String imagePath;
  final String title;
  final String subTitle;

  new({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  static List<PageModel> get items {
    return [
      PageModel(
        imagePath: AppImages.onboardingDoctor,
        title: AppStrings.onboardingSlide1Title,
        subTitle: AppStrings.onboardingSlide1Description,
      ),
      PageModel(
        imagePath: AppImages.onboardingBooking,
        title: AppStrings.onboardingSlide2Title,
        subTitle: AppStrings.onboardingSlide2Description,
      ),
      PageModel(
        imagePath: AppImages.onboardinNotifications,
        title: AppStrings.onboardingSlide3Title,
        subTitle: AppStrings.onboardingSlide3Description,
      ),
    ];
  }
}
