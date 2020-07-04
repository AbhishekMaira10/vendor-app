import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  Button({@required this.btnText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(25.0)),
        child: Center(
          child: Text(
            "$btnText",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
