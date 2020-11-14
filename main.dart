
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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
int firstdicenumber=1;
int seconddicenumber=1;
void changediceface(){
  firstdicenumber=Random().nextInt(6)+1;
  seconddicenumber=Random().nextInt(6)+1;
}
class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    changediceface();
                  });
                },
                child: Image.asset('images/dice$firstdicenumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                   changediceface();
                  });
                },
                child: Image.asset('images/dice$seconddicenumber.png')),
          )
        ],
      ),
    );
  }
}
