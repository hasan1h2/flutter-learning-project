import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class Coustom_Profile_Fild extends StatelessWidget {
  const Coustom_Profile_Fild({
    super.key,
    required this.iconSvg,
    required this.title,
    this.isArro = true,
    this.isLine = false,
    required this.onTap,
    this.svgWidth = 40,  this.height=70,  required this.isAcount,
  });
  final String iconSvg;
  final String title;
  final bool isArro;
  final bool isLine;
  final bool isAcount;
  final VoidCallback onTap;
  final double svgWidth;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ,
      child: Card(
        elevation: 0,
        color: Color(StaticColors.whiteColor),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: ListTile(
          onTap: onTap,
          leading: CircleAvatar(
            maxRadius: 20,backgroundColor: Color(StaticColors.whiteColor) ,
            child: SvgPicture.asset(iconSvg,),
          ),
          title: Row(
            children: [
              /// Line (optional)
              if (isLine)
                SvgPicture.asset(
                  StaticImg.line,
                  width: 1,
                ),

              if (isLine) const SizedBox(width: 5),

              /// Text
              Text(
                title,
                style: StaticStyle.style(
                  12,
                  isAcount
                      ? StaticColors.primaryTextColor
                      : StaticColors.red,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
          trailing: isArro
              ? SvgPicture.asset(
            isAcount ? StaticImg.arro : StaticImg.arrored,
            width: 10,
          )
              : const SizedBox(),        ),
      ),
    );
  }
}
