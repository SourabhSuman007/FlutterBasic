import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  final Function stateChanger;
  final String answer;

  Answer(this.stateChanger, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          answer,
          style: GoogleFonts.amarante(
            textStyle: TextStyle(
              fontSize: 20
            ),
          ),
        ),
        onPressed: stateChanger,
        autofocus: true,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.centerLeft,
          backgroundColor: MaterialStateProperty.all(Colors.white70),
        ),
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }
}
