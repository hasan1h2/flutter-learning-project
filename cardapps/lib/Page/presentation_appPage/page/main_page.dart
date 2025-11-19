import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/page/page_1.dart';
import 'package:untitled/Page/presentation_appPage/page/page_2.dart';
import 'package:untitled/Page/presentation_appPage/page/Page3.dart';
import 'package:untitled/Page/presentation_appPage/page/page4.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> mainPages = const [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: mainPages.length,
      itemBuilder: (context, index) {
        return mainPages[index];
      },
    );
  }
}
