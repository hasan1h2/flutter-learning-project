import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';

class CoustomBtn extends StatelessWidget {
  const CoustomBtn({
    super.key,
    required this.btnTitle,
    required this.onTap,
    required this.arro,
    this.iscolor = true,
    this.isTranprant = false,
  });
  final String btnTitle;
  final VoidCallback onTap;
  final bool arro;
  final bool iscolor;
  final bool isTranprant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          color: isTranprant
              ? Colors.transparent
              : iscolor
              ? Color(StaticColors.brandColor)
              : Color(StaticColors.blueV),
          borderRadius: BorderRadius.circular(20),
          border: isTranprant
              ? Border.all(color: Color(StaticColors.brandColor), width: 1)
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnTitle,
              style: TextStyle(
                color: isTranprant
                    ? Color(StaticColors.brandColor)
                    : Color(StaticColors.whiteColor),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            arro
                ? Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: Color(StaticColors.whiteColor),
                  )
                : Icon(null),
          ],
        ),
      ),
    );
  }
}
