import 'package:bmiapp/MainHeader/drawer.dart';
import 'package:bmiapp/Page/about_page.dart';
import 'package:bmiapp/Page/tab_Bar.dart';
import 'package:bmiapp/Page/bmi_page.dart';
import 'package:bmiapp/Page/settings_page.dart';
import 'package:bmiapp/main.dart';
import 'package:flutter/material.dart';

class DrawerMy extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;

  const DrawerMy({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  State<DrawerMy> createState() => _DrawerMyState();
}

class _DrawerMyState extends State<DrawerMy> {
  late final List<Map<String, dynamic>> menu = [
    {
      'title': 'DarkTheme',
      'icon': Icons.dark_mode,
      'page': null,
    },
    {
      'title': 'Home',
      'icon': Icons.home,
      'page': null,
    },{
      'title': 'BMI',
      'icon': Icons.accessibility,
      'page': BmiPage(  isDarkMode: widget.isDarkMode,
        onThemeToggle: widget.onThemeToggle,),
    },
    {
      'title': 'About',
      'icon': Icons.info,
      'page': const AboutPage(),
    },
    {
      'title': 'Settings',
      'icon': Icons.settings,
      'page': const SettingsPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "BMI App Menu",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

          // menu list with navigation
          ...menu.map((item) {
            return ListTile(
              leading: Icon(item['icon'], color: Colors.blueGrey),
              title: Text(item['title']),

              trailing: item['title'] == 'DarkTheme'
                  ? IconButton(
                icon: Icon(
                  widget.isDarkMode
                      ? Icons.wb_sunny
                      : Icons.nightlight_round,
                  color: widget.isDarkMode
                      ? Colors.yellow
                      : Colors.blueGrey,
                ),
                onPressed: widget.onThemeToggle,
              )
                  : null,

              onTap: () {
                Navigator.pop(context);

                if (item['page'] != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item['page']),
                  );
                }
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}


