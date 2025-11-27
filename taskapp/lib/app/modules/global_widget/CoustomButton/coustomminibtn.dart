import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/utils/static_colors/static_colors.dart';

class CustomMiniBtn extends StatelessWidget {
  const CustomMiniBtn({
    super.key,
    required this.btnTitle,
    required this.onTap,
    this.btnIcon = "",
    required this.bdColor,
    this.isIcon = true,
    this.istransparent = false,
    required this.pdH,
    required this.pdV,
     this.isborder = false,
  });
  final String btnTitle;
  final String btnIcon;
  final VoidCallback onTap;
  final double pdH;
  final double pdV;
  final int bdColor;
  final bool isIcon;
  final bool isborder;
  final bool istransparent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: pdH, vertical: pdV),
        decoration: BoxDecoration(
          color: istransparent
              ? Colors.transparent
              : Color(StaticColors.whiteColor),
          borderRadius: BorderRadius.circular(6),
          border:isborder? Border.all(width: 1, color: Color(bdColor)):null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isIcon
                ? SvgPicture.asset(
                    btnIcon,
                    width: 22,
                    colorFilter: ColorFilter.mode(Color(StaticColors.brandColor), BlendMode.srcIn),
                  )
                : Text(
                    btnTitle,
                    style: TextStyle(
                      color: Color(StaticColors.black),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
