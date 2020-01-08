// todo
//create a route to show the success page
import 'package:flutter/material.dart';

import './route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
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
