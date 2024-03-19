// ignore_for_file: prefer_const_constructors

import 'package:flappybird/bird.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => __HomePageState();
}

class __HomePageState extends State<HomePage> {
  double birdYaxis = 0.0;

  void jump() {
    setState(() {
      birdYaxis -= 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: jump,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 0),
                  alignment: Alignment(0, birdYaxis),
                  color: Colors.blue,
                  child: MyBird(),
                ),
              )),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
        ],
      ),
    );
  }
}
