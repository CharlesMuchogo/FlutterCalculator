import 'package:flutter/material.dart';

class Equation extends StatelessWidget {
  final equationDisplay, definedHeight;

  Equation(this.equationDisplay, this.definedHeight);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          equationDisplay,
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
