import 'package:flutter/material.dart';
class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    var Colorss =[

      Colors.green,
      Colors.pink,
      Colors.blue,Colors.red,Colors.amber,Colors.deepOrange

    ];
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          Expanded(
            child: GridView.count(crossAxisCount: 4,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(
                  color: Colors.pink,
                ), Container(
                  color: Colors.green,
                ), Container(
                  color: Colors.pink,
                ), Container(
                  color: Colors.pink.shade200,
                ), Container(
                  color: Colors.pink,
                ), Container(
                  color: Colors.pink,
                ), Container(
                  color: Colors.pink.shade700,
                )
              ],

            ),
          ),
          Expanded(

            child: GridView.builder(
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( mainAxisExtent: 100,crossAxisSpacing: 20,mainAxisSpacing: 20, crossAxisCount: 2),
                itemCount: Colorss.length,
                itemBuilder: (context, index) {
              return Container(
                color: Colorss[index],
              );

            }),
          )
        ],
      ),
    );
  }
}
