import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}