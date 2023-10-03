import 'package:calculatorapp/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/intro_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          children: const [
            IntroPage(
              bodyText:
                  'Visualize your academic journey. Gain insights and analytics on your GPA trends. Set goals and stay motivated throughout the semester.',
              svgPicture: 'assets/Dictionary_girlGirlholdingbook.svg',
              boldText: 'Track your progress',
            ),
            IntroPage(
              bodyText:
                  'Stay organized with ease. Manage multiple semesters effortlessly. Switch, add, or edit courses to keep your academic history up to date.',
              svgPicture: 'assets/Computer_spreadsheets.svg',
              boldText: 'Manage Your Semesters',
            ),
            IntroPage(
              bodyText:
                  'Build your academic profile effortlessly. Add course details such as name, credit name, and grades. Accuracy is crucial for GPA calculation.',
              svgPicture: 'assets/List_girl.svg',
              boldText: 'Add Your Courses',
            ),
          ],
        ),
        Center(
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: kBlueColor,
              dotColor: Color(0xffD9D9D9),
              dotHeight: 7,
              dotWidth: 8,
            ),
          ),
        ),
      ],
    );
  }
}
