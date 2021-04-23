import 'package:flutter/material.dart';

import './quiz.dart';
import './results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//void ts() => print("qwerty");
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'Do you play CSGO?',
      'answer': ['Yes', 'No'],
    },
    {
      'question': 'Do you code?',
      'answer': ['Yes', 'No'],
    },
    {
      'question': 'What is the color of the sky today?',
      'answer': ['Blue', 'White', 'Red', 'Purple', 'I\'m blind, can\'t see.'],
    },
    {
      'question': 'What comes first?',
      'answer': ['Hen', 'Egg'],
    },
    {
      'question': 'How many colors does an Indian flag constitute?',
      'answer': ['1', '2', '3', 'Nahi Pata!'],
    },
    {
      'question': 'What is a color of white?',
      'answer': ['Obviously, White.', 'Black', 'Combo of all colors.'],
    },
    {
      'question': 'What is a color of white?',
      'answer': ['Obviously, Black.', 'White', 'It is not a color!!'],
    }
  ];

  var _qIndex = 0;

  void _ansQ() {
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics'),
        ),
        body: (_qIndex < _questions.length)
            ? Quiz(
                ansQ: _ansQ,
                questions: _questions,
                qIndex: _qIndex,
              )
            : Results(),
      ),
    );
  }
}
