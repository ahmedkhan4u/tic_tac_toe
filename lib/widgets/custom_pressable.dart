import 'package:flutter/material.dart';

class CustomPressable extends StatelessWidget {
  final text;
  final clickHandler;
  const CustomPressable({this.text = "", this.clickHandler});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
      color: Colors.transparent,
      child: InkWell(
        //splashColor: Colors.grey,
        onTap: clickHandler,
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: Color.fromARGB(255, 53, 52, 50))),
          alignment: Alignment.center,
          child: Text(text,
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    ));
  }
}
