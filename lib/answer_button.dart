import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, 
      required this.answerText, 
      required this.onTap});

  final String answerText;
  final void Function () onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 71, 6, 185),
              foregroundColor: Colors.white,
            ),
            child: Text(answerText),
          );
  }
}