import 'package:flutter/material.dart';
import 'package:test_app/answer.dart';
import 'package:test_app/question.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Blue', 'Yellow', 'Green'],
    },
    {
      'questionText': 'What\'s your favorite fruit?',
      'answers': ['Mellon', 'Banana', 'Peach', 'Apple'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Bear', 'Lion', 'Cat', 'Dog'],
    },
  ];

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
