import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;

  const MainTitle({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.grey),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String text;

  const Subtitle({Key key, this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w100, fontSize: 24, color: Colors.grey),
    );
  }
}
