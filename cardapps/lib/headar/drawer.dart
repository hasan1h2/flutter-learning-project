import 'package:flutter/material.dart';

Drawer myDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // Drawer Header
        UserAccountsDrawerHeader(
          accountName: Text("MD. Ahosan"),
          accountEmail: Text("ahosan@example.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/front-view-man-posing_23-2148364843.jpg?semt=ais_hybrid&w=740&q=80',
            ),
          ),
          decoration: BoxDecoration(color: Colors.cyan),
        ),

        // Drawer Items
        ListTile(
          leading: Icon(Icons.home, color: Colors.cyan),
          title: Text("Home"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.cyan),
          title: Text("Profile"),
          onTap: () {

          },
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.cyan),
          title: Text("Settings"),
          onTap: () {

          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.red),
          title: Text("Logout"),
          onTap: () {
          },
        ),
      ],
    ),
  );
}
