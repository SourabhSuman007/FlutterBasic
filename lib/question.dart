import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qStr;
  Question(this.qStr);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      transform: Matrix4.rotationZ(0.07),
      margin: EdgeInsets.all(15),
      child: Text(
        qStr,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
