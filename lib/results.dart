import 'package:flutter/material.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GradientText(
          text: 'Quiz Over!!',
          colors: [Colors.red[600], Colors.orange[400]],
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          //textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
