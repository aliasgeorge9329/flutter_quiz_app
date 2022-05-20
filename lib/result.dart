import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  Result(this.score, this.resetQuiz);

  String get resultTextGen {
    String resultText;
    if (score < 10) {
      resultText = 'Enthuvadeee ..';
    } else if (score < 30) {
      resultText = 'Nannyikoodee.. 🫠';
    } else if (score < 50) {
      resultText = 'Powli.. 🥳';
    } else {
      resultText = 'Mone Scn.. 🤗';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          children: [
            Text(
              resultTextGen,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
                onPressed: resetQuiz,
                child: const Text(
                  'Attempt Quiz Again',
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
