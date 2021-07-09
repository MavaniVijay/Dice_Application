import 'dart:math';

import 'package:flutter/material.dart';

class Dice1 extends StatefulWidget {
  @override
  _Dice1State createState() => _Dice1State();
}

class _Dice1State extends State<Dice1> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    void Devicechange() {
      setState(() {
        LeftDiceNumber = Random().nextInt(6) + 1;
        RightDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Center(
          child: Text('Double Dicee'),
        ),
        elevation: 10,
        shadowColor: Colors.grey,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    Devicechange();
                  },
                  child: Image.asset('images/dice$LeftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  onPressed: () {
                    Devicechange();
                  },
                  child: Image.asset('images/dice$RightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
