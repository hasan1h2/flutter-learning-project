import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/page/page_2.dart';
import 'package:untitled/headar/appBar.dart';
import '../model/model.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Page_1',actions: [ElevatedButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
      }, child: Text('Next-page'))]),
      body: Expanded(
        child: ListView.builder(
          itemCount: page1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 6),
                          child: Text(
                            page1[index]['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              letterSpacing: 1,
                              color: Colors.black54,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 4),
                          child: Row(
                            children: [
                              Text(
                                page1[index]['subTitle'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 1,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                page1[index]['price'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 1,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            top: 4,
                            left: 6,
                            bottom: 8,
                          ),
                          child: Text(
                            page1[index]['date'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              letterSpacing: 1,
                              color: Colors.black54,
                            ),
                          ),
                        ),

                        Card(
                          color: Colors.pink.shade50,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                page1[index]['img'] ??
                                    'assets/images/default.png',
                              ),
                            ),
                            title: Text(
                              page1[index]['title1']??'Unknown',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                            subtitle: Text(
                              page1[index]['number'] ?? 'N/A',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black45,
                              ),
                            ),
                            trailing: Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  page1[index]['btn'] ?? 'View',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
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
    );
  }
}
