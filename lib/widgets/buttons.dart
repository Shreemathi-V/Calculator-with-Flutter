import 'package:flutter/material.dart';

// creating Stateless Widget for buttons
class MyButton extends StatelessWidget {
// declaring variables
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;
  final double textSize;

//Constructor
  MyButton({
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttontapped,
    this.textSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          width: 65,
          height: 65,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: textSize,
              ),
            ), // fontWeight: FontWeight.bold
            onPressed: buttontapped,
            color: color,
            textColor: textColor,
          ),
        ),
      ),
    );
  }
}
