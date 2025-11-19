import 'package:flutter/material.dart';
import 'card_body.dart';
import 'card_item_body.dart';
import 'figma_model.dart';

class CardItemPage extends StatelessWidget {
  const CardItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                categoryitemVal.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CardItemBody(
                    cardItemName: categoryitemVal[index]['cateName'],
                    cardItemimg:categoryitemVal[index]['cateimg'], cardItemColor:List.from(categoryitemVal[index]['cateColor']) ,
                  ),
                ),
              ),
          ));
  }
}
