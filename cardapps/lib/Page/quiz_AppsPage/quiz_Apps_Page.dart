import 'package:flutter/material.dart';

import '../../headar/appBar.dart';
import '../../headar/drawer.dart';
import 'quiz_widget/main_widget.dart';
class QuizAppsPage extends StatelessWidget {
  const QuizAppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        backgroundColor: Colors.cyan.shade300,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/front-view-man-posing_23-2148364843.jpg?semt=ais_hybrid&w=740&q=80',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 28, color: Colors.white),
            onPressed: () {
            },
          ),
        ], title: 'Quiz-Apps',
      ),
      drawer: myDrawer(context),
body: Column(
  children: [
    MainWidget(),
  ],
),

    );
  }
}
