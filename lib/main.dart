import 'package:flutter/material.dart';

import 'package:test_app/quiz.dart';
import 'package:test_app/result.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  static const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 3},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Green', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite fruit?',
      'answers': [
        {'text': 'Mellon', 'score': 1},
        {'text': 'Banana', 'score': 2},
        {'text': 'Peach', 'score': 3},
        {'text': 'Apple', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Bear', 'score': 1},
        {'text': 'Lion', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 4}
      ],
    },
  ];

  var questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      questionIndex++;
      _totalScore += score;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(questions, questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
