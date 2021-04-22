import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//void ts() => print("qwerty");
class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  void ansQ() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
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
            Question(questions[_qIndex]),
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
