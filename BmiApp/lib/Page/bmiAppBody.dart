import 'package:bmiapp/Page/tab_Bar.dart';
import 'package:flutter/material.dart';
import 'package:bmiapp/MainHeader/appBarHeader.dart';
import '../MainHeader/drawer.dart';

class BmiappBody extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;

  const BmiappBody({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  State<BmiappBody> createState() => _BmiappBodyState();
}

class _BmiappBodyState extends State<BmiappBody> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarHeader(
        isDarkMode: widget.isDarkMode,
        onThemeToggle: widget.onThemeToggle,
      ),
      drawer: DrawerMy(
        isDarkMode: widget.isDarkMode,
        onThemeToggle: widget.onThemeToggle,
      ),
      body:

      TapBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
            widget.onThemeToggle();
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              widget.isDarkMode ? Icons.wb_sunny : Icons.nightlight_round,
            ),
            label: "Theme",
          ),
        ],
      ),
    );
  }
}
