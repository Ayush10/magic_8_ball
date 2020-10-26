import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Magic8Ball(),
    ),
  );
}

class Magic8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Magic8BallArea());
  }
}

class Magic8BallArea extends StatefulWidget {
  @override
  _Magic8BallAreaState createState() => _Magic8BallAreaState();
}

class _Magic8BallAreaState extends State<Magic8BallArea> {
  int magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            magicBallNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('assets/images/ball$magicBallNumber.png'),
      ),
    );
  }
}
