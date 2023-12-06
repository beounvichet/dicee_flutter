import 'package:flutter/material.dart';

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

  @override

  Widget build(BuildContext context) {

    //leftDee = 3;

    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              //flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDee = 4;
                  });

                },
                child: Image.asset('images/dice$leftDee.png', width: 150,),
              ),
            ),
            Expanded(
              child: TextButton(onPressed: () {
                GetRan();
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
  print('object');


}
