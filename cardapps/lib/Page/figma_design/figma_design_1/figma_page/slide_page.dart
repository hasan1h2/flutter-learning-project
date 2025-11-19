import 'package:flutter/material.dart';

class SlidePage extends StatelessWidget {
  const SlidePage({super.key});

  @override
  Widget build(BuildContext context) {
    List benarimg = [
      'assets/images/figma_image/benar.png',
      'assets/images/figma_image/benar1.png',
      'assets/images/figma_image/benar2.png',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ...List.generate(
            benarimg.length,
                (index) => Padding(
              padding: EdgeInsets.only(top: 8,right: 0,left: 20, bottom: 8),
              child: Image.asset(
                benarimg[index],
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
