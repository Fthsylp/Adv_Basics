import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: Color.fromARGB(125, 255, 255, 255),
          ),
          const SizedBox(height: 100), // Add space between image and button
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(
              Icons.turn_slight_right_sharp,
              color: Colors.white,
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
