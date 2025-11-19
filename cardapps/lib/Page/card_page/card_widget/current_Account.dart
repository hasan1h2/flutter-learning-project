import 'package:flutter/material.dart';

class CurrentAccount2 extends StatelessWidget {
  const CurrentAccount2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 2,blurStyle:BlurStyle.outer)],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 3),
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
      height: 100,
      width: double.infinity,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade400,
                Colors.pink.shade500,
                Colors.blue.shade700,
                Colors.red.shade400,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            'VISA',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Current_Account'),
        ),
        titleTextStyle: TextStyle(
          fontSize: 16,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
        subtitle: Padding(
          padding: EdgeInsetsGeometry.only(
            top: 0,
            left: 15,
            bottom: 0,
            right: 0,
          ),
          child: Text('....21836'),
        ),
        subtitleTextStyle: TextStyle(fontSize: 14, color: Colors.black),
        trailing: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade400,
                Colors.pink.shade500,
                Colors.blue.shade800,
                Colors.red.shade400,
              ],
              begin: Alignment.topCenter,
              end: Alignment.centerRight,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'MANAGE',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
