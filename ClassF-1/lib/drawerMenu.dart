import 'dart:async';
import 'package:flutter/material.dart';
import 'about.dart';
import 'bmi.dart';
import 'button.dart';
import 'drawerMatiriyal.dart';
import 'myBmi.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  final DrawerControllerHelper controller = DrawerControllerHelper();

  @override
  void initState() {
    super.initState();
    controller.startTimer(() {
      setState(() {}); // update UI when timer ticks
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // 🔹 Background image with AnimatedSwitcher
                AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: Container(
                    height: 280,
                    child: Image.asset(
                      controller.currentImage, // ✅ use controller
                      key: ValueKey<int>(controller.currentIndex),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // 🔹 Overlay (User info)
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  accountName: DrawerMaterial.accountName(),
                  accountEmail: DrawerMaterial.accountSubName(),
                  currentAccountPicture: DrawerMaterial.accountPhoto(),
                ),
              ],
            ),
          ),

          // 🔹 Drawer menu list
          Expanded(
            child: ListView.builder(
              itemCount: DrawerMaterial.lidIcon.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: DrawerMaterial.lidIcon[index],
                  title: DrawerMaterial.lidTitle[index],
                  onTap: () {
                    if(index==0){
                      Navigator.push(  ///DrawerMaterial.appBarTitle['MainAppBar'] ?? 'No Title')
                        context,
                        MaterialPageRoute(builder: (context) =>Button (title:DrawerMaterial.appBarTitle['MainAppBar']?? 'No Title' )),
                      );
                    }else if(index==3){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      );

                    }
                    else if(index==4){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BmiHomePage()),
                      );

                    }
                    else if(index==5){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyBmi()),
                      );

                    }

                  },
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
