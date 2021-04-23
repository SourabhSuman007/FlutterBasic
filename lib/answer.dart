import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateChanger;
  final String answer;
  Answer(this.stateChanger, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answer),
        onPressed: stateChanger,
      ),
    );
  }
}
