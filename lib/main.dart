import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 10.0,
          title: Center(child: Text('Dicee App')),
          backgroundColor: Colors.grey[900],
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
  // ignore: non_constant_identifier_names
  int leftDiceNumber = 1;
  int rightDiceNumber = 4;

  void _setState() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  _setState();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              )),
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    _setState();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')))
        ],
      ),
    );
  }
}
