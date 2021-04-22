import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //void ts() => print("qwerty");

  var qIndex = 0;
  void ansQ() {
    qIndex = qIndex + 1;
    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Do you like CSGO?',
      'Do you code?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics'),
        ),
        body: Column(
          //invisible widgets
          children: [
            //list
            Text(questions[qIndex]),
            FloatingActionButton(
              child: Text('Btn1'),
              onPressed: ansQ,
            ),
            FloatingActionButton(
              child: Text('Btn2'),
              onPressed: () {
                //dsd
                print('Btn2 pressed.');
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Btn3'),
              onPressed: () => {
                print('Btn3 pressed.'),
              },
            ),
          ],
        ),
      ),
    );
  }
}
