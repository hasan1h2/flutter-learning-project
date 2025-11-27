import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../data/utils/static_colors/static_colors.dart';


class Indicator {
  static Widget indicator(PageController pageController) => SmoothPageIndicator(
    controller: pageController,
    count: 3,
    effect:  ExpandingDotsEffect(
      expansionFactor: 3,
      spacing: 2,
      radius: 20,
      dotWidth: 14,
      dotHeight: 6,
      dotColor: Color(StaticColors.black),
      activeDotColor:Color(StaticColors.brandColor),
    ),
  );
}
