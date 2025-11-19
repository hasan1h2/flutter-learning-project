import 'package:flutter/material.dart';
import 'card_body.dart';
import 'figma_model.dart';

class CardPage extends StatelessWidget {
  CardPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category..',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'poppins',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(categoryVal.length, (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CardBodyFigma(
                      cateimg: categoryVal[index]['cateimg'],
                      cateName: categoryVal[index]['cateName'],
                      cateColor: List<Color>.from(categoryVal[index]['cateColor']),
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
