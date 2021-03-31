import 'package:flutter/material.dart';

class WidgetButtonDefault extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final String text;
  final Function onPressed;

  const WidgetButtonDefault({
    this.backgroundColor = Colors.white,
    this.color = Colors.blue,
    @required this.text,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
