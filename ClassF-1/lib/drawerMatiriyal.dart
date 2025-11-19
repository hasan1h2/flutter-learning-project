import 'dart:async';

import 'package:flutter/material.dart';
class DrawerMaterial  {
  static accountName() {
    return const Text(
      " Tanvir Alam Mugdha",
      style: TextStyle(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  static accountSubName() {
    return const Text(
      "App Developer",
      style: TextStyle(
          color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w500),
    );
  }
  static accountPhoto() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: const CircleAvatar(
        backgroundColor: Colors.brown,
        child: Icon(Icons.person, size: 40, color: Colors.black),
      ),
    );
  }
  static final Map<int, String> imgB = {
    1: 'assets/imag/b.png',
    2: 'assets/imag/b5.png',
    3: 'assets/imag/b2.png',
    4: 'assets/imag/b3.png',
    5: 'assets/imag/b4.png',
  };
  static var img =imgB.length;
  static final Map<String, String> appBarTitle = {
   'MainAppBar':'Chat_App',
    'BmiAppBar':'BMI Calculate'
  };
  static final List<Icon> lidIcon = const [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.logout),
    Icon(Icons.account_box_outlined),
    Icon( Icons.heat_pump_outlined),
    Icon( Icons.accessibility_new),

  ];

  static final List<Text> lidTitle = const [
    Text("Home"),
    Text("Settings"),
    Text("Logout"),
    Text("About"),
    Text("Bmi"),
    Text("My_Bmi"),
  ];



}


class DrawerControllerHelper {
  int currentIndex = 1;
  Timer? timer;
  // Start Timer
  void startTimer(void Function() onUpdate) {
    timer = Timer.periodic(const Duration(seconds: 3), (Timer t) {
      currentIndex++;
      if (currentIndex > DrawerMaterial.imgB.length) {
        currentIndex = 1;
      }
      onUpdate(); // call setState in widget
    });
  }

  // Cancel Timer
  void dispose() {
    timer?.cancel();
  }

  // Get current image path
  String get currentImage => DrawerMaterial.imgB[currentIndex]!;
}



