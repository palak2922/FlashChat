import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {

  RoundedButton({this.color, this.title,@required this.onPresses});

  final Color color;
  final String title;
  final Function onPresses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30),
        elevation: 5,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,

            ),
          ),
          onPressed: onPresses,
        ),
      ),
    );
  }
}
