import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The Q',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'answer1', onTap: () {}),
          AnswerButton(answerText: 'answer2', onTap: () {}),
          AnswerButton(answerText: 'answer3', onTap: () {}),
          AnswerButton(answerText: 'answer4', onTap: () {}),
        ],
      ),
    );
  }
}
