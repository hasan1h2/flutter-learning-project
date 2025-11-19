import 'package:flutter/material.dart';
import 'button.dart';
import 'drawerMatiriyal.dart';
import 'drawerMenu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child:

        Text('${DrawerMaterial.appBarTitle['MainAppBar']}'))),
        drawer:DrawerMenu(),
        body: Button (title:DrawerMaterial.appBarTitle['MainAppBar']?? 'No Title' ),
      ),
    );
  }
}
