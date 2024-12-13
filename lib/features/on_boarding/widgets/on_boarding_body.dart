import 'package:advancedee/core/utils/size_config.dart';
import 'package:advancedee/core/widgets/constants.dart';
import 'package:advancedee/core/widgets/custom_button.dart';
import 'package:advancedee/features/on_boarding/widgets/custom_indicator.dart';
import 'package:advancedee/features/on_boarding/widgets/custom_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {

  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 25,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients ? (pageController?.page == 2 ?false : true) : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
            child: CustomButton(
              text: pageController!.hasClients ? (pageController?.page == 2 ? 'Get started' : 'Next') : 'Next',
            ),
        ),
      ],
    );
  }
}
