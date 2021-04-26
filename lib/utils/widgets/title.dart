import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final double fontSize;

  const MainTitle({Key key, this.title, this.fontSize = 30}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.fade,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.grey),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String text;
  final double fontSize;

  const Subtitle({Key key, this.text, this.fontSize = 24}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w100, fontSize: fontSize, color: Colors.grey),
    );
  }
}
