import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/page/welcome_page.dart';
import 'package:untitled/headar/appBar.dart';
import 'package:untitled/headar/drawer.dart';

class PresentationMainPage extends StatelessWidget {
  const PresentationMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Presentation_App',backgroundColor: Colors.pink.shade200,),
      drawer: myDrawer(context),
      body: Column(
        children: [
          // WelcomePage
          Expanded(child: WelcomePage()),

      ],
      ),
    );
  }
}
