import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  MyText(
      {super.key,
      required this.text,
      this.size = 18,
      this.color = Colors.black}) {
    // TODO: implement MyText
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

class MyBoldText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  MyBoldText(
      {super.key,
      required this.text,
      this.size = 25,
      this.color = Colors.black}) {
    // TODO: implement MyText

  }
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
