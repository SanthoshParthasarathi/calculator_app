import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double fontSize;
  final Function callback;
  const CalculatorButton({
     this.text,
     this.fillColor,
     this.textColor,
     this.fontSize,
     this.callback,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 70,
      height: 70,
      child: FlatButton(
        color: Color(fillColor),
        textColor: Color(textColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: fontSize,
            ),
          ),
        ),
        onPressed: () => callback(text),
      ),
    );
  }
}
