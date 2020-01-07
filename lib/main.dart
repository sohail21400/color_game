// todo
//

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "Color Guess",
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColorBrightness: Brightness.light,
        colorScheme: ColorScheme.light(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // String randomColor;

  final bottomGap = 500.0;
  final rightGap = 20.0;

  List totalColorList = [];

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

  Widget colorBlockGenerator(List colorNumbers) {
    return Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: Color.fromARGB(colorNumbers[0], colorNumbers[1],
              colorNumbers[2], colorNumbers[3]),
          borderRadius: BorderRadius.circular(10),
        ));
  }

  Color pickAColor() {
    Random random = Random();
    return totalColorList[random.nextInt(9)];
  }

  @override
  Widget build(BuildContext context) {
    randomColorNumberGenerator();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            color: pickAColor(),
            height: 20,
            width: 20,
          ),
          SizedBox(height: 100),
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

// body: Center(
//   child: Container(
//     color: Color.fromARGB(randomNumber256(), randomNumber256(), randomNumber256(), randomNumber256()),
//   ),
//   // child: RaisedButton(
//   //   child: Text("Switch"),
//   //   onPressed: () {
//   //     print(randomHexValue());
//   //   },
//   // ),
// ),
// it adds 9 random colored container to a list
// void colorCubesGenerator() {
//   for (var i = 1; i <= 9; i++) {
//     totalColorList.add(Container(
//       height: 75,
//       width: 75,
//       decoration: BoxDecoration(
//           color: Color.fromARGB(
//             0xFF,
//             randomNumber256(),
//             randomNumber256(),
//             randomNumber256(),
//           ),
//           borderRadius: BorderRadius.circular(10)),
//     ));
//   }
// }

// String randomHexValue() {
//   String randomHex4 = "0x";
//   Random random = Random();

//   for (int i = 1; i <= 4; i++) {
//     randomHex4 += random.nextInt(256).toRadixString(16).toUpperCase();
//   }
//   return randomHex4;
// }

// Color c = Color(randomHexValue());
