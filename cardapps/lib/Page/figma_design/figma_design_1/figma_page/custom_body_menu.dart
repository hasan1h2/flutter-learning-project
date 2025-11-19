import 'package:flutter/material.dart';

import 'figma_main_page.dart';
class CustomBodyMenu extends StatefulWidget {
  const CustomBodyMenu({super.key, required this.menuTitle, required this.menuImg});
  final String menuTitle;
  final String menuImg;

  @override
  State<CustomBodyMenu> createState() => _CustomBodyMenuState();
}

class _CustomBodyMenuState extends State<CustomBodyMenu> {
  @override
  Widget build(BuildContext context) {


    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InkWell(
        onTap: () {
          setState(() {

          });
          if(widget.menuTitle=='Home'){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FigmaMainPage(), ));
          } if(widget.menuTitle=='Home'){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FigmaMainPage(), ));
          }
          print(widget.menuTitle);
        },
        child: ListTile(
          leading: Image(
            height: 24,
            width: 24,
            fit: BoxFit.contain,
            image: AssetImage(
                widget.menuImg
            ),
          ),
          title: Text(widget.menuTitle),
        ),
      ),
    );
  }
}
