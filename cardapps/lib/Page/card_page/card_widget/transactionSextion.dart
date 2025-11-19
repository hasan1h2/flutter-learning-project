import 'package:flutter/material.dart';

class TransactionSextion extends StatelessWidget {
  const TransactionSextion({super.key});

  @override
  Widget build(BuildContext context) {
    List <Icon> icon=[
      Icon(Icons.shop,),Icon(Icons.stay_current_landscape_rounded),
      Icon(Icons.lightbulb)

    ];  List <String> name=[
      'Spotify Premium',
       'Salary',
      'Electricity'

    ];List <String> subName=[
      'Expense',
       'income',
      'Expense'

    ];List <int> price=[
     900,6000,1200

    ];
    return Container(
      margin:EdgeInsets.only(right: 3,bottom: 1,left: 3,top: 7),
      width: double.infinity,
      height: 300,
      color: Colors.black12,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 8,vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: Text(
                      'TransactionSextion',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Row(mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('See All',style: TextStyle(fontSize: 17,color: Colors.blue),),
                        Icon(Icons.arrow_forward_ios_rounded,color:  Colors.blue,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: icon.length,
              itemBuilder: (context, index) {
              return  Container(
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
                    child: Icon(icon[index].icon,color: Colors.white,),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name[index]),
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
                    child: Text(subName[index]),
                  ),
                  subtitleTextStyle: TextStyle(fontSize: 14, color: Colors.black),
                  trailing: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade400,
                          // Colors.pink.shade500,
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
                          '${price[index]}',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
