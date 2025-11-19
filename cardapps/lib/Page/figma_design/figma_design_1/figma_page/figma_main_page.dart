import 'package:flutter/material.dart';
import 'package:untitled/Page/figma_design/figma_design_1/figma_page/product_page.dart';
import 'package:untitled/Page/figma_design/figma_design_1/figma_page/slide_page.dart';
import '../../../../headar/custom_appbar.dart';
import 'card_item_page.dart';
import 'card_page.dart';
class FigmaMainPage extends StatelessWidget {
  const FigmaMainPage({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: myAppBar(title: 'hhh'),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // CustomAppbar start
            CustomAppbar(
              img: 'assets/images/figma_image/fofilepic.jpg',
              title: 'Good morning!',
              uname: 'User name',
              notifiimg: 'assets/images/figma_image/notifi.jpg',
              menuimg: 'assets/images/figma_image/menu.jpg',
              filterimg: 'assets/images/figma_image/filter.jpg',
            ),
            // CustomAppbar End
            //SlidePage start
            SlidePage(),
            // CustomAppbar End
            // Category Start
            CardPage(),
            // CardItemPage
            CardItemPage(),
            // ProductPage
            ProductPage(),

          ],
        ),
      ),
    );
  }
}
