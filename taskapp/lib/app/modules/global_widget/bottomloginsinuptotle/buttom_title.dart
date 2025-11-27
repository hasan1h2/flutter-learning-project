import 'package:flutter/material.dart';
import '../../../data/utils/static_colors/static_colors.dart';
class ButtomTitle extends StatelessWidget {
  const ButtomTitle({super.key, required this.title1, required this.title2, required this.onTap});
  final String title1;
  final String title2;
  final VoidCallback onTap  ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(title1,style: TextStyle(color: Color(StaticColors.grey,),fontSize: 14,fontWeight: FontWeight.w400),),
          SizedBox(width: 10,),
          InkWell(
            onTap:onTap ,
              child: Text(title2,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(StaticColors.brandColor)),)),
        ],
      ),
    );
  }
}
