import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    if (totalScore < 8){
      return "Not Good";
    }
    else if(totalScore < 12){
      return "Good work";
    }
    else {
      return "Awsome";
    }

  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(resultText,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
        ),
        FlatButton(onPressed: resetQuiz, child: Text("Restart") , color: Colors.red,
        textColor: Colors.white,)
      ],

    );
  }
}