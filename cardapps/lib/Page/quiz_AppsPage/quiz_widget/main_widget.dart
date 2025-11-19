import 'package:flutter/material.dart';
import 'package:untitled/Page/quiz_AppsPage/quiz_widget/quizSextion.dart';
import '../quiz_model.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int score = 0;
  int selectItem = -1;
  PageController pageController = PageController();
  String? selectans;
  String? validans;
  var qu;

  Widget myfun() {
    bool isLast = qu == quiz.length - 1;
    bool isFirst = qu == 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!isFirst)
          ElevatedButton(
            onPressed: () {
              pageController.previousPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeIn,
              );
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: const Text("Prev",style: TextStyle(fontSize: 20),),
            ),
          ),
        SizedBox(width: 30,),
        ElevatedButton(
          onPressed: onShow,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(isLast ? 'Finish' : 'Next',style: TextStyle(fontSize: 20),),
          ),
        ),
      ],
    );
  }

  void onShow() {
    String msg = '';
    if (selectItem != -1) {
      if (selectans == validans) {
        score++;
        msg = 'Correct';
      } else {
        if (score > 0) {
          score--;
          msg = 'Wrong Answer';
        }
      }
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    } else {
      msg = " Please select an option!";
    }

    showDialog(
      context: context,
      builder: (_) =>
          AlertDialog(content: Text(msg, style: const TextStyle(fontSize: 20))),
    );
    setState(() {
      selectItem = -1;
      selectans = null;
      validans = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 2,
            blurStyle: BlurStyle.outer,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          QuizSection(score: score),

          // QuizAndScoreSection

          // question-Show
      SizedBox(
        height: 500,
        child: PageView.builder(
          controller:pageController,
          itemCount: quiz.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            qu = index;
            return Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.grey.shade50,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: ListTile(
                    title: Text(
                      'Question No : ${index + 1}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3,
                      ),
                    ),
                    subtitle: Text(
                      quiz[index]['question'],
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: quiz[index]['options'].length,
                    itemBuilder: (context, index2) {
                      final option = quiz[index]['options'][index2];
                      final isSelected = selectItem == index2;
                      // validans =quiz[index]['answer'];
                      // selectans=option;
                      return InkWell(
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.green
                                : Colors.green.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(14),
                          child: ListTile(
                            title: Text(
                              quiz[index]['options'][index2],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: isSelected ? 23 : 20,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            leading: Text(
                              '${index2 + 1}',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectItem = index2;
                            selectans = option;
                            validans = quiz[index]['answer'];
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
          Container(
            height: 80,
            child: InkWell(
              onTap: onShow,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  myfun(),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
