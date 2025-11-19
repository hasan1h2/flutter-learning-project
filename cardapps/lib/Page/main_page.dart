import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/presentation_Main_page.dart';
import 'package:untitled/Page/quiz_AppsPage/quiz_Apps_Page.dart';
import 'package:untitled/Page/card_page/home_Page.dart';
import 'package:untitled/Page/figma_design/figma_design_1/figma_page/figma_model.dart';
import 'package:untitled/Page/history/page/history_main_page.dart';
import 'package:untitled/Page/payment_&&Login_Page/loginPage.dart';

import 'figma_design/figma_design_1/figma_page/customdayer.dart';
import 'figma_design/figma_design_1/figma_page/figma_main_page.dart';
import 'figma_design/figma_design_1/figma_page/login_page_custom.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 5;

  late final List<Widget> pages = [
    const HomePage(),
    const QuizAppsPage(),
    const LoginPage(),
    const PresentationMainPage(),
    const HistoryMainPage(),
    FigmaMainPage(),
    // LoginPageCustom(),
    CustomDrawer(
      headerImg: customdrawerhaderlogin['haderImg'],
      loginImg: customdrawerhaderlogin['loginImg'],
      loginTitle: customdrawerhaderlogin['loginTitle'],
      // menuTitle: customdrawerbody[indexnumber]['menuTitle'],
      // menuImg: customdrawerbody[indexnumber]['profile'],
    ),
  ];

  get indexnumber => null;

  void changeIndex(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: changeIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payment'),
          BottomNavigationBarItem(icon: Icon(Icons.present_to_all),label: 'Presentation',),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.file_open), label: 'Figma File',),
          BottomNavigationBarItem(icon: Icon(Icons.file_open), label: 'Figma File',),
        ],
      ),
    );
  }
}
