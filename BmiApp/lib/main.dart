import 'package:flutter/material.dart';
import 'Page/bmiAppBody.dart';

void main() => runApp(const BmiApp());

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
      _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: _themeMode,
    home: BmiappBody(
      isDarkMode: _themeMode == ThemeMode.dark,
      onThemeToggle: _toggleTheme,
    ),
  );
}
