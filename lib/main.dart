import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red[400],
          appBar: AppBar(
            title: Text('Roll ur Dice'),
            backgroundColor: Colors.red[600],
          ),
          body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftButtonVariable = 2;
  int rightButtonVariable = 3;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftButtonVariable =
                      Random().nextInt(6) + 1; //6 numbers between 1 and 6
                });
              },
              child: Image.asset('images/dice$leftButtonVariable.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightButtonVariable = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightButtonVariable.png'),),
          ),
        ],
      ),
    );
  }
}

