import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  var questions = ["question 1", "question 2"];

  var questionIndex = 0;

  void answerQuestion(){
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
