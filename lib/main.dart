import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndexNo = 0;
  var score = 0;

  void updateQuestionIndex(int newScore) {
    setState(() {
      questionIndexNo++;
      score += newScore;
    });
    print(score);
  }

  void _resetQuiz() {
    setState(() {
      questionIndexNo = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite colour',
        'answers': [
          {'text': 'blue', 'score': 10},
          {'text': 'black', 'score': 4},
          {'text': 'green', 'score': 3},
          {'text': 'white', 'score': 1},
        ]
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': [
          {'text': 'elephant', 'score': 4},
          {'text': 'horse', 'score': 17},
          {'text': 'dog', 'score': 7},
          {'text': 'cats', 'score': 2},
        ]
      },
      {
        'questionText': 'What\'s your favourite food',
        'answers': [
          {'text': 'biriyani', 'score': 5},
          {'text': 'rice', 'score': 2},
          {'text': 'alfarm', 'score': 16},
          {'text': 'fruits', 'score': 23},
        ]
      },
    ];
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(title: const Text('Quiz App')),
            body: questionIndexNo < questions.length
                ? Quiz(
                    questionIndexNo,
                    updateQuestionIndex,
                    questions,
                  )
                : Result(score, _resetQuiz)));
  }
}
