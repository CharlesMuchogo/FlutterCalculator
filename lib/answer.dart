import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final displayNumber, definedHeight;

  Answer(this.displayNumber, this.definedHeight);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: definedHeight,
          alignment: Alignment.center,
          child: Text(
            displayNumber,
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}
