import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
          SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
          SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
          SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
        ],
      ),
    );
  }
}
