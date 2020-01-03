import 'dart:math';

import 'package:flutter/material.dart';

int fxn() {
  return Random().nextInt(6) + 1;
}

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.amber,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftbutton = 1;
  int rightbutton = 1;
  void changeLeftDice() {
    setState(() {
      // rightbutton = fxn(); to make both dice change when 1 is pressed, uncomment it!!
      leftbutton = fxn();
    });
    //print("Left button is pressed"); // it is used to print to console
  }

  void changeRightDice() {
    setState(() {
      //leftbutton = fxn(), to make both the dice change when 1 is pressed, uncomment it!!
      rightbutton = fxn();
    });
    //print("Right button is pressed"); // it is used to print to console
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeLeftDice();
              },
              child: Image.asset("images/dice$leftbutton.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeRightDice();
              },
              child: Image.asset("images/dice$rightbutton.png"),
            ),
          ),
        ],
      ),
    );
  }
}
