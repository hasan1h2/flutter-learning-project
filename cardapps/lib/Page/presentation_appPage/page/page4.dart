import 'package:flutter/material.dart';
import '../../../headar/appBar.dart';
import '../model/model.dart';
import '../presentation_Main_page.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Page_4...End',actions: [ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PresentationMainPage(),));
      }, child: Text('Fast-page'))]),

      body: Expanded(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Container(
                margin: EdgeInsetsGeometry.only(top: 5),
                padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 1),
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Upcoming',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Available Slots',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.pink.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'History',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  final meeting = meetings[index];
                  final isBooked = meeting['ofer'] == 'Booked';
                  return Padding(
                    padding: EdgeInsetsGeometry.all(5),
                    child: Card(
                      elevation: 3,
                      color: Colors.white,
                      child: SizedBox(
                        width: 388,
                        height: 150,

                        child: Padding(
                          padding: EdgeInsetsGeometry.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsGeometry.only(top: 9, left: 6),
                                child: Text(meetings[index]['title'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsGeometry.only(left: 6, top: 4),
                                child: Text(meetings[index]['subTitle'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: Text(
                                  meetings[index]['ofer'],
                                  style: TextStyle(
                                    color: Colors.pink.shade400,
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                    print("Tapped on index: $index");
                                  },
                                  child: Container(
                                    width: 90,
                                    height: 41,

                                    decoration: BoxDecoration(
                                      color: isBooked
                                          ? Colors.grey.shade200
                                          : Colors.black87,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        meetings[index]['btn'],
                                        style: TextStyle(
                                          color:isBooked?Colors.black38 :Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
