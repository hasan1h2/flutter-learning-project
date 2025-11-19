import 'package:bmiapp/Page/home_Page.dart';
import 'package:flutter/material.dart';


class TapBar extends StatefulWidget {
  const TapBar({super.key});

  @override
  State<TapBar> createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.account_box_outlined), text: "About"),
                Tab(icon: Icon(Icons.login), text: "Login"),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(), // Uses HomePage from the other file
            Center(child: Text("About Page", style: TextStyle(fontSize: 24))),
            Center(child: Text("Login Page", style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
