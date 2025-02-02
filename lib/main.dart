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
  int leftDiceNum = 1;
  int rightDiceNum = 6;

  @override
  Widget build(BuildContext context) {
    spinBoth() {
      leftDiceNum = (Random().nextInt(6) + 1);
      rightDiceNum = Random().nextInt(6) + 1;
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNum = (Random().nextInt(6) + 1);
                    });
                  },
                  child: Image(
                    image: AssetImage("images/dice$leftDiceNum.png"),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNum = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage("images/dice$rightDiceNum.png"),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      spinBoth();
                    });
                  },
                  color: Colors.white,
                  splashColor: Colors.redAccent,
                  child: Text("Spin Both"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
