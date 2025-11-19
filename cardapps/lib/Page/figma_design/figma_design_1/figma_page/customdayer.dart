import 'package:flutter/material.dart';
import 'custom_body_menu.dart';
import 'figma_model.dart';
import 'login_page_custom.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    super.key,
    required this.headerImg,
    required this.loginImg,
    required this.loginTitle,
    // required this.menuTitle,
    // required this.menuImg,
  });

  final String headerImg;
  final String loginImg;
  final String loginTitle;
  // final String menuTitle;
  // final String menuImg;
  // late int indexnumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50,right: 100,bottom: 50),
      width: 200,
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Image.asset(headerImg, height: 41, width: 147),
          ),

          // Drawer Menu List
          Expanded(
            child: ListView.builder(
              itemCount: customdrawerbody.length,
              itemBuilder: (context, index) {
                // indexnumber = index;
                return CustomBodyMenu(menuTitle:  customdrawerbody[index]['menuTitle'], menuImg:  customdrawerbody[index]['profile'],
                    // menuTitle: menuTitle, menuImg: menuImg
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
              child: InkWell(
                onTap: () {
                  if(loginTitle=='Log Out')
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPageCustom()));
                  print(loginTitle);
                },
                child: ListTile(
                  leading: Image.asset(loginImg),
                  title: Text(
                    loginTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
