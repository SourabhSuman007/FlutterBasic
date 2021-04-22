import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateChanger;
  Answer(this.stateChanger);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Btn_1'),
        onPressed: stateChanger,
      ),
    );
  }
}
