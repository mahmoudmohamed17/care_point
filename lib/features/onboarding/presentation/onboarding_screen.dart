import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/cubits/app_flow_cubit.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_text_button.dart';
import '../domain/page_model.dart';
import 'page_item.dart';

class OnboardingScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin {
  late final PageController _controller = PageController();
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);
  final List<PageModel> _items = PageModel.items;

  @override
  void dispose() {
    _controller.dispose();
    _currentIndex.dispose();
    super.dispose();
  }

  void _onNext() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 650),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _onComplete() {
    context.read<AppFlowCubit>().completeOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            ValueListenableBuilder(
              valueListenable: _currentIndex,
              builder: (context, index, child) {
                final isLastPage = index == _items.length - 1;
                return AnimatedOpacity(
                  opacity: isLastPage ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 250),
                  child: IgnorePointer(
                    ignoring: isLastPage,
                    child: child,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8, top: 8),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: CustomTextButton(
                    text: AppStrings.commonSkip,
                    onPressed: _onComplete,
                  ),
                ),
              ),
            ),
            24.verticalSpace,

            // Page content
            SizedBox(
              height: context.screenHeight * 0.65,
              child: PageView.builder(
                controller: _controller,
                itemCount: _items.length,
                onPageChanged: (page) => _currentIndex.value = page,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: PageItem(model: item),
                  );
                },
              ),
            ),
            32.verticalSpace,

            // Dots indicator
            SmoothPageIndicator(
              controller: _controller,
              count: _items.length,
              effect: ExpandingDotsEffect(
                dotColor: context.colorScheme.outlineVariant,
                activeDotColor: context.colorScheme.primary,
                dotHeight: 10.h,
                dotWidth: 10.w,
                expansionFactor: 4,
              ),
            ),
            const Spacer(),

            // Navigation button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ValueListenableBuilder(
                valueListenable: _currentIndex,
                builder: (context, index, child) {
                  final isLast = index == _items.length - 1;
                  return CustomElevatedButton(
                    width: double.infinity,
                    text: isLast ? AppStrings.onboardingGetStarted : AppStrings.commonNext,
                    onPressed: isLast ? _onComplete : _onNext,
                  );
                },
              ),
            ),
            24.verticalSpace,
          ],
        ),
      ),
    );
  }
}
