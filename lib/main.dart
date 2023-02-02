import 'package:flutter/material.dart';
import 'package:my_fisrt_app/answer.dart';
import 'package:my_fisrt_app/question.dart';
import 'package:my_fisrt_app/quizz.dart';
import 'package:my_fisrt_app/result.dart';

//void main() {
//  runApp(MyApp());
//}

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;
  var totalScore = 0;

  void _answerQuestion(int score){
    totalScore += score;
    setState(() {
      if(_questionIndex < questions.length){
        _questionIndex++;
      }

    });
  }


  var questions = [
    {
      'questionText' : 'Quel est ton annimal préféré ?',
      'answers' : [
        {"reponse": "Chien", "score": 0},
        {"reponse": "chat", "score": 1},
        {"reponse": "Perroquet", "score": 2},
        {"reponse": "papillion", "score": 3},
      ]
    },
    {
      'questionText' : 'De quelle maison de poudlard viens tu ?',
      'answers' : [
        {"reponse": "Gryffondor", "score": 0},
        {"reponse": "Serpentard", "score": 1},
        {"reponse": "Poufsouffle", "score": 2},
        {"reponse": "Serdaigle", "score": 3},
        ]
    }
  ];

  void _resetQuizz(){
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quizz App"),
        ),
        body: _questionIndex < questions.length ?
          Quizz(questions, _questionIndex, _answerQuestion)
          :
          Result(totalScore, _resetQuizz)
      ),
    );
  }
}
