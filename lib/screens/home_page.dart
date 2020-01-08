import 'package:flutter/material.dart';

import 'dart:math';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // String randomColor;

  // final bottomGap = 500.0;
  // final rightGap = 20.0;

  // this is a 2d list
  List totalColorList = [];
  List pickedColor;
  int tryCount = 0;

  int randomNumber256() {
    Random random = Random();
    return random.nextInt(256);
  }

  // this adds 9 random colors (TEXT AS LIST) to the totalColorList
  void randomColorNumberGenerator() {
    for (var i = 1; i <= 9; i++) {
      totalColorList.add([
        0xFF,
        randomNumber256(),
        randomNumber256(),
        randomNumber256(),
      ]);
    }
  }

  void success() {
    print("success");
    Navigator.of(context).pushNamed("/successPage");
  }

  Widget colorBlockGenerator(List colorNumbers) {
    return GestureDetector(
      onTap: () {
        if (pickedColor == colorNumbers) {
          success();
        } else {
          setState(() {
            tryCount++;
          });
        }
      },
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black45, offset: Offset(0,4))],
          color: Color.fromARGB(colorNumbers[0], colorNumbers[1],
              colorNumbers[2], colorNumbers[3]),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void pickAColor() {
    Random random = Random();
    pickedColor = totalColorList[random.nextInt(9)];
  }

  Widget tryCountWidget() {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          "Try: $tryCount",
          style: TextStyle(fontSize: 30),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 60,
            color: Colors.black45,
            offset: Offset(0, -3),
          ),
        ],
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }

  void pickedColorShowingWidget(Function funToPickAColor) {
    funToPickAColor();
    // Random random = Random();
    // List colorValue = totalColorList[random.nextInt(9)];
    // return totalColorList[random.nextInt(9)];
    String output = "RGB (" +
        pickedColor[1].toString() +
        ", " +
        pickedColor[2].toString() +
        ", " +
        pickedColor[3].toString() +
        ")";
    temp = Text(
      output,
      style: TextStyle(fontSize: 27),
    );
  }
  Widget temp;

  @override
  Widget build(BuildContext context) {
    randomColorNumberGenerator();
    pickedColorShowingWidget(pickAColor);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(height: 40),
          temp,
          SizedBox(height: 60),
          tryCountWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              colorBlockGenerator(totalColorList[0]),
              colorBlockGenerator(totalColorList[1]),
              colorBlockGenerator(totalColorList[2]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              colorBlockGenerator(totalColorList[3]),
              colorBlockGenerator(totalColorList[4]),
              colorBlockGenerator(totalColorList[5]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              colorBlockGenerator(totalColorList[6]),
              colorBlockGenerator(totalColorList[7]),
              colorBlockGenerator(totalColorList[8]),
            ],
          ),
        ],
      ),
    );
  }
}