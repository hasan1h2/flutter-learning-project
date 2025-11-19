import 'package:flutter/material.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key, required this.productImg, required this.productTitle, required this.productPrice, required this.productRating});
  final String productImg;
  final String productTitle;
  final String productPrice;
  final String productRating;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xfffdfdfd),
      elevation: 3,
      shadowColor: Colors.grey,
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Image(image: AssetImage(productImg)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productTitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0xff6C6C6C),
                    ),
                  ),
                  Text(productPrice,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    color: Color(0xff6C6C6C),
                  ),),
                ],
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, size: 18, color: Color(0xffFEB241)),
                SizedBox(width: 10),
                Text(productRating,style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Color(0xffB0B7DE),
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
