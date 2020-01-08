import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('You did it!'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('WoW'),
              Text("You got it right!")
            ],
          ),
        ),
      ),
    );
  }
}