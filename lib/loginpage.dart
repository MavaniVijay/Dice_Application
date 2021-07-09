import 'package:flutter/material.dart';
import 'package:flutter_dice/Doubledice.dart';
import 'package:flutter_dice/Singledice.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        shadowColor: Colors.grey,
        title: Center(
          child: Text('Dicee'),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dice2(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Single Dice',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dice1(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Double Dicee',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
