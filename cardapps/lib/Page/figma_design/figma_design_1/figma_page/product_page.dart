import 'package:flutter/material.dart';
import 'product_page_body.dart';
import 'figma_model.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryitemProduct.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = categoryitemProduct[index];
        return ProductPageBody(
          productImg: item['Productimg'],
          productTitle: item['ProductTitle'],
          productPrice: item['ProductPrice'],
          productRating: item['ProductRating'],
        );
      },
    );
  }
}
