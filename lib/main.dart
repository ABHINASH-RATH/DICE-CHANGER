import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const diceRoll());
}

class diceRoll extends StatefulWidget {
  const diceRoll({Key? key}) : super(key: key);

  @override
  diceRollState createState() => diceRollState();
}

class diceRollState extends State<diceRoll> {
  @override
  int leftdicenumber = 1;
  int rightdicenumber = 6;
  Widget build(BuildContext context) {
    void diceroll() {
      setState(() {
        leftdicenumber = Random().nextInt(6) + 1;
        rightdicenumber = Random().nextInt(6) + 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade600,
        appBar: AppBar(
          title: Text('Dice ROll'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(
                      iconSize: 150,
                      onPressed: diceroll,
                      icon: Image.asset('images/dice$leftdicenumber.png')),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      iconSize: 150,
                      onPressed: diceroll,
                      icon: Image.asset('images/dice$rightdicenumber.png')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
