import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';
import '../slider.dart';

class Costomlogintext extends StatelessWidget {
  const Costomlogintext({super.key, required this.title});
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
        child: Column(
          children: [
            Text(title,
              style: StaticStyle.style(
                22,
                StaticColors.grey,
                FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StaticString.student,
                    style: StaticStyle.style(
                      14,
                      StaticColors.brandColor,
                      FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    StaticString.teacher,
                    style: StaticStyle.style(
                      14,
                      StaticColors.grey,
                      FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // Slider-------
            MySlider(),
            // from-------
          ],
        ),
      ),
    );
  }
}
