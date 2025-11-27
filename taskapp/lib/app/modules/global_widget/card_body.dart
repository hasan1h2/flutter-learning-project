import 'package:flutter/material.dart';
class CardBodyFigma extends StatelessWidget {
  const CardBodyFigma({super.key, required this.cateimg, required this.cateName, required this.cateColor});
  final String cateimg;
  final String cateName;
  final List<Color> cateColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:EdgeInsets.only(right: 8,left: 48,bottom: 11,top: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        gradient: LinearGradient(
            colors:cateColor,
          begin: AlignmentGeometry.bottomLeft,
          end: AlignmentGeometry.centerRight
        ),
      ),
      child: Padding(
        padding:EdgeInsets.only(right: 30,left: 14,bottom: 11,top: 11),
        child: Row(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(
                cateimg,
              ),
            ),

            Text(cateName,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
          ],
        ),
      ),
    );
  }
}
