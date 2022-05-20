import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndexNo;
  final Function updateQuestionIndex;

  Quiz(this.questionIndexNo, this.updateQuestionIndex, this.questions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question((questions[questionIndexNo]['questionText'] as String)),
        ...(questions[questionIndexNo]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                updateQuestionIndex, answer['text'] as String, answer['score']))
            .toList()
      ],
    );
  }
}
