import 'package:flutter/material.dart';
import 'package:my_fisrt_app/question.dart';

import 'answer.dart';

class Quizz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  const Quizz(this.questions, this.questionIndex, this.answerQuestion,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(answer['reponse'] as String,
                () => answerQuestion(answer['score'])))
      ],
    );
  }
}
