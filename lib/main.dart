import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNum = 1;
    var rightDiceNum = 6;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("Left");
              },
              child: Image(
                image: AssetImage("images/dice$leftDiceNum.png"),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("right");
              },
              child: Image(
                image: AssetImage("images/dice$rightDiceNum.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
