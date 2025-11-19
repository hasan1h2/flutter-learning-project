import 'package:flutter/material.dart';
import 'custom_body_menu.dart';
import 'figma_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.headerImg,
    required this.loginImg,
    required this.loginTitle,
  });

  final String headerImg;
  final String loginImg;
  final String loginTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      width: 278,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24),
          topRight: Radius.circular(80),
        ),
      ),
      child: Column(
        children: [
          // Header Logo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 40),
            child: Image.asset(headerImg, height: 41, width: 147),
          ),

          // Drawer Menu List
          Expanded(
            child: ListView.builder(
              itemCount: customdrawerbody.length,
              itemBuilder: (context, index) {
                return CustomBodyMenu(
                  menuTitle: customdrawerbody[index]['menuTitle'],
                  menuImg: customdrawerbody[index]['profile'],
                );
              },
            ),
          ),

          // Login Section
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: Image.asset(loginImg),
                title: Text(loginTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
