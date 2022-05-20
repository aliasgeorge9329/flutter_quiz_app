import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String text;
  final answerScore;
  Answer(this.handler, this.text, this.answerScore);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () => {handler(answerScore)},
            child: Text(text)));
  }
}
