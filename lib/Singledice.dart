import 'dart:math';

import 'package:flutter/material.dart';

class Dice2 extends StatefulWidget {
  @override
  _Dice2State createState() => _Dice2State();
}

class _Dice2State extends State<Dice2> {
  int DiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 10,
        title: Center(
          child: Text('Single Dice'),
        ),
        backgroundColor: Colors.black,
        shadowColor: Colors.grey,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    DiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$DiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
