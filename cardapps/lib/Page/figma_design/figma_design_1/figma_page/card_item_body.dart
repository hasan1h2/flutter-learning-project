import 'package:flutter/material.dart';

class CardItemBody extends StatelessWidget {
  const CardItemBody({
    super.key,
    required this.cardItemName,
    required this.cardItemimg, required this.cardItemColor,
  });
  final String cardItemName;
  final String cardItemimg;
  final List<Color>cardItemColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
 padding: EdgeInsets.only(left: 28,),
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: cardItemColor),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image(image: AssetImage(cardItemimg)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Text(
              cardItemName,
              style: TextStyle(
                color: Color(0xff6C6C6C),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
