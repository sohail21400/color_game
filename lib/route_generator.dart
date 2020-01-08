import 'package:flutter/material.dart';
import './screens/home_page.dart';
import './screens/success_page.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    // final args = settings.arguments;
    
    switch (settings.name){
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/successPage":
        return MaterialPageRoute(builder: (_) => SuccessPage());
      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          body: Center(
        child: Text('Error'),
      ));
    });
  }
}