import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/page/page4.dart';

import '../../../headar/appBar.dart';
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(title: 'Page_3',actions: [ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Page4(),));
      }, child: Text('Next-page'))]),

      body: Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return  Padding(
              padding: EdgeInsetsGeometry.all(5),
              child: Card(
                elevation: 2,
                shape: Border.all(width: 2,color: Colors.grey.shade300,style: BorderStyle.solid,strokeAlign: 1),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(image: AssetImage('assets/images/banana2.png')),
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),




                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:EdgeInsetsGeometry.only(top: 2,left: 6,),
                                child: Text('Naoule',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,fontFamily: 'Poppins',letterSpacing: 1,color: Colors.black38,),),
                              ),
                              Padding(
                                padding:EdgeInsetsGeometry.only(left: 6,top: 2,),
                                child: Text('Paris,France',style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 12,fontFamily: 'Poppins',letterSpacing: 1,color: Colors.black38,),),

                              ),
                              Padding(
                                padding: EdgeInsetsGeometry.only(top: 2,left: 6,bottom: 3),
                                child: Text('23 Aug 2024',style:  TextStyle(fontWeight: FontWeight.w500,fontSize: 10,fontFamily: 'Poppins',letterSpacing: 1,color: Colors.black38,),),
                              ),

                            ],

                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
                        child: Text('Cancel',style: TextStyle(color: Colors.grey,fontSize: 16),),
                      )
                    ],
                  ),
                ),
              ),
            );
          },),
      ),

    );
  }
}
