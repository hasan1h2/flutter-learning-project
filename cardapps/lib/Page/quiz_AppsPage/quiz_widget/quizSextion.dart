import 'package:flutter/material.dart';

class QuizSection extends StatefulWidget {
  final int score; // Type defined properly

  const QuizSection({super.key, required this.score});

  @override
  State<QuizSection> createState() => _QuizSectionState();
}

class _QuizSectionState extends State<QuizSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text(
            'QUIZ..',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 1.6,
            ),
          ),
          Text(
            'Score ${widget.score}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
