import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final bool isLoading;

  ConfirmButton({Key key, @required this.title, @required this.onPressed, @required this.isLoading}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: isLoading ? (){} : onPressed,
      child: isLoading ? CircularProgressIndicator(backgroundColor: Colors.grey,) : Text(title, style: TextStyle(fontSize: 16)),
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
