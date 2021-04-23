import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final Function() onPressed;
  final String title;

  ConfirmButton({Key key, this.title, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => onPressed,
      child: Text(title, style: TextStyle(fontSize: 16)),
      textColor: Colors.white,
      color: Colors.blue,
      height: 60,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.blue, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8)),
      minWidth: MediaQuery.of(context).size.width,
    );
  }
}
