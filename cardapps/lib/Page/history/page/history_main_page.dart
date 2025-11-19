import 'package:flutter/material.dart';
import 'package:untitled/Page/history/page/widget/date_time.dart';
import 'package:untitled/Page/history/page/widget/grid_View.dart';
import 'package:untitled/headar/appBar.dart';
import 'package:untitled/headar/drawer.dart';

class HistoryMainPage extends StatefulWidget {
  const HistoryMainPage({super.key});

  @override
  State<HistoryMainPage> createState() => _HistoryMainPageState();
}

class _HistoryMainPageState extends State<HistoryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'History_Page'),
      drawer: myDrawer(context),
      body: Column(
        children: [
          // dateAndTime
          MyDateTime(),
          Expanded(child: MyGridView())


        ],
      ),
    );
  }
}
