import 'package:flutter/material.dart';
import '../quiz_model.dart';
class QuestionShow extends StatefulWidget {
  final  PageController pageController;
  final int selectItem;
  final String? selectans;
  final String? validans;
  const QuestionShow({
    super.key,
    required this.pageController,
    required this.selectItem,
    required this.selectans,
    required this.validans,
  });

  @override
  State<QuestionShow> createState() => _QuestionShowState();
}

class _QuestionShowState extends State<QuestionShow> {
  int? selectedIndex;
  String? selectedAnswer;
  String? correctAnswer;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectItem;
    selectedAnswer = widget.selectans;
    correctAnswer = widget.validans;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        controller:widget.pageController,
        itemCount: quiz.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
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
                    final isSelected = selectedIndex == index2;
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
                          selectedIndex = index2;
                          selectedAnswer = option;
                          correctAnswer = quiz[index]['answer'];
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
    );
  }
}
