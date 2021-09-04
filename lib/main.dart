import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int dice1Value = 2;
  int dice2Value = 5;

  void generateNumber(){
    setState((){
      dice1Value = Random().nextInt(6) + 1;
      dice2Value = Random().nextInt(6) + 1;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16.0),
                  ),
                    onPressed: () => generateNumber(),
                    child: Image.asset("images/dice${dice1Value}.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16.0),
                  ),
                  onPressed: () => generateNumber(),
                  child: Image.asset("images/dice${dice2Value}.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
