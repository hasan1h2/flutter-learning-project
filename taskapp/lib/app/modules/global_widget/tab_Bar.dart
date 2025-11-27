import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_img/static_img.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';

import '../home/views/home_page.dart';

class TapBar extends StatefulWidget {
  const TapBar({super.key});

  @override
  State<TapBar> createState() => TapBarState();
}

class TapBarState extends State<TapBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
         title: Text(StaticString.homeHea,style: StaticStyle.style(18, StaticColors.grey, FontWeight.w500),),
          actions: [Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(StaticImg.search),
          )],
          bottom: TabBar(
            tabs: [
              Tab( text:StaticString.tp1 ),
              Tab( text:StaticString.tp2 ),
              Tab( text:StaticString.tp3 ),

            ],
          ),
        ),

        body: const TabBarView(
          children: [
            HomePage(),
            Center(child: Text("About Page", style: TextStyle(fontSize: 24))),
            Center(child: Text("Login Page", style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
