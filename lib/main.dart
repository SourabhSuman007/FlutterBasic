import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void ts() => print("qwerty");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Basics'),
          ),
          body: Column(
            //invisible widgets
            children: [
              //list
              FloatingActionButton(
                child: Text('Btn1'),
                onPressed: ts,
              ),
              FloatingActionButton(
                child: Text('Btn2'),
                onPressed: ts,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('Btn3'),
                onPressed: ts,
              ),
            ],
          )),
    );
  }
}
