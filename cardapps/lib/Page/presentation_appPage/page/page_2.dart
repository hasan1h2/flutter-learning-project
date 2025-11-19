import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/page/Page3.dart';

import '../../../headar/appBar.dart';
import '../model/model.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Page_2',actions: [ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(),));
      }, child: Text('Next-page'))]),
      body: Expanded(
        child: ListView.builder(
          itemCount: page2.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: EdgeInsetsGeometry.all(5),
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: SizedBox(
                  width: 388,
                  child: Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsetsGeometry.all(10),
                          height: 70,
                          width: 67,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(page2[index]['img'])),borderRadius: BorderRadius.circular(8)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:EdgeInsetsGeometry.only(top: 9,left: 6,),
                              child: Text(page2[index]['title'],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,fontFamily: 'Poppins',letterSpacing: 1,color: Colors.black38,),),
                            ),
                            Padding(
                              padding:EdgeInsetsGeometry.only(left: 6,top: 4,),
                              child: Text(page2[index]['subTitle'],style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 16,fontFamily: 'Poppins',letterSpacing: 1,color: Colors.black38,),),

                            ),
                            Padding(
                              padding: EdgeInsetsGeometry.only(top: 4,left: 6,bottom: 8),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: Colors.grey,size: 30,),
                                  Text(page2[index]['address'],style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 17,fontFamily: 'Poppins',letterSpacing: 1,color: Colors.black38,),),
                                ],
                              ),
                            ),

                          ],

                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },),
      ),

    );
  }
}
