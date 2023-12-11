import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {   //StatefulWidget can use HOT Restart /StateLessWidget Hot reload
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDee = 2;
  int rightDee = 5;
  Random random = new Random();

  @override

  Widget build(BuildContext context) {

    //leftDee = 3;
    int randomNumber = random.nextInt(6) +1; // from 0 upto 99 included

    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              //flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {

                      leftDee = randomNumber;

                  });

                },
                child: Image.asset('images/dice$leftDee.png', width: 150,),
              ),
            ),
            Expanded(
              child: TextButton(onPressed: () {
                setState(() {
                  rightDee = randomNumber;
                });
              },
              child: Image.asset('images/dice$rightDee.png', width: 150,),),
            ),
          ],
        ),
      ),
    );
  }
}

void GetRan(){



}
