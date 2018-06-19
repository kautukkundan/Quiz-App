import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  bool _answer;

  AnswerButton(this._answer);

  @override
  Widget build(BuildContext context){
    return new Expanded(
      child: new Material( 
      color: _answer == true ? Colors.greenAccent : Colors.redAccent,
      child: new InkWell(
        onTap: ()=> print("You answered " + (_answer == true ? "TRUE" : "FALSE")),
        child: new Center(
          child: new Container(
            child: new Text(_answer == true ? "TRUE" : "FALSE", style: new TextStyle(fontSize: 30.0, color: Colors.white),),
          ),
        ),
      ),
    ),
    );
  }
}