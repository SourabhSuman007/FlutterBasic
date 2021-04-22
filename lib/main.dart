import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//void ts() => print("qwerty");
class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _ansQ() {
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
            Answer(_ansQ), //callbacks
            Answer(_ansQ),
            Answer(_ansQ),
          ],
        ),
      ),
    );
  }
}
