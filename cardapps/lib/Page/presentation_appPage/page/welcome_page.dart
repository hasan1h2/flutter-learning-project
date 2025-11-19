import 'package:flutter/material.dart';
import 'package:untitled/Page/presentation_appPage/page/page_1.dart';
import '../../payment_&&Login_Page/loginPage.dart';
import '../model/model.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  PageController pageController = PageController();
  int select =0;

  void createclick(int index) {
    if(woodData[index]['btn'] == 'Create Account'){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
    }

  }
  void skipping_nex(int index) {
    if(select == index){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(),));
    }

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.parse('650'),
      child: PageView.builder(
        controller: pageController,
        itemCount: woodData.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: 650,
            width: double.infinity,
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  woodData[index]['title'],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  woodData[index]['subTitle'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  woodData[index]['oth'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    fontFamily: 'Poppins',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(woodData[index]['img']),
                ),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    decoration: BoxDecoration(
                      color: Color(0xff2E7D32),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Text(
                      woodData[index]['btn'],
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                  onTap: () {
                    pageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeIn,
                    );

                    setState(() {
                      createclick(index);
                    });
                  },

                ),
                InkWell(
                  onTap: () {
                    skipping_nex(index);
                    select=index;
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    height: 45,
                    child: woodData[index]['skipping'],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
