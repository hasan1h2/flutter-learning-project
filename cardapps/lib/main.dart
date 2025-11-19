import 'package:flutter/material.dart';
import 'Page/main_page.dart';
void main ()=>runApp(MyApps());
class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context)=>MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());}
