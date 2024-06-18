import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

  class _QuizState extends State<Quiz>{
    List<String> selectedAnswers = [];
    var activeScreen = 'start-screen';
    
    void switchScreen() {
      setState(() {
        activeScreen = 'questions-screen';
      });
    }

    void chooseAnswer (String answer) {
      selectedAnswers.add(answer);

      if(selectedAnswers.length == questions.length){
        setState(() {
          selectedAnswers = [];
          activeScreen = 'start-screen';
        });
      }
    }

    @override
    Widget build(context){
      return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 83, 18, 196),
                Color.fromARGB(255, 97, 41, 193),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
        child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : QuestionsScreen(onSelectAnswer: chooseAnswer),
      ),
    ));
  }
}
