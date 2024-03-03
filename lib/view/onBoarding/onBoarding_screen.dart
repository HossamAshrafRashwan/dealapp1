import 'package:dealapp1/view/registration/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => onBoardingContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterView(),
                        ),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const Spacer(),
                  ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndecator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  // SizedBox(
                  //   width: 60,
                  //   height: 60,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       _pageController.nextPage(
                  //           duration: const Duration(milliseconds: 300),
                  //           curve: Curves.ease);
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       shape: const CircleBorder(),
                  //     ),
                  //     child: SvgPicture.asset(
                  //       'assets/icons/arrow-right.svg',
                  //       fit: BoxFit
                  //           .contain, // Ensure the SVG fits well within the button.
                  //     ),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndecator extends StatelessWidget {
  const DotIndecator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 16 : 6,
      width: 6,
      decoration: BoxDecoration(
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.primary.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: 'assets/images/onBoarding1.svg',
    title: 'Technical Support',
    description:
        'We will solve the customer’s problem as quickly as possible after sending his request, so our service is available 24 hours a day,\n7 days a week.',
  ),
  Onboard(
    image: 'assets/images/onBoarding2.svg',
    title: 'Experienced Technicians',
    description:
        'We will solve the customer’s problem as quickly as possible after sending his request, so our service is available 24 hours a day,\n7 days a week.',
  ),
  Onboard(
    image: 'assets/images/onBoarding3.svg',
    title: 'Technical Support',
    description:
        'We will solve the customer’s problem as quickly as possible after sending his request, so our service is available 24 hours a day,\n7 days a week.',
  ),
];

class onBoardingContent extends StatelessWidget {
  const onBoardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(),
        ),
        const Spacer(),
      ],
    );
  }
}
