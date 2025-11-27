import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class Coustomloginb extends StatelessWidget {
  const Coustomloginb({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(StaticImg.loginbg),fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15),bottomRight: Radius.circular(15))
              ),
            ),
          ),  Positioned(
            bottom: 100,
            top: 0,
            right: 250,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(StaticImg.bglogintop)),
              ),
            ),
          ), Positioned(
            bottom: 0,
            top: 20,
            right: 200,
            left: 0,
            child:Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(StaticImg.learnova)),
              ),
            ),
          ), Positioned(
            top: 100,

            left: 207,
            child:Container(
              child: Text(StaticString.learnova,style: StaticStyle.style(30, StaticColors.whiteColor, FontWeight.w600),),
            ),
          ),
        ],
      ),
    );
  }
}
