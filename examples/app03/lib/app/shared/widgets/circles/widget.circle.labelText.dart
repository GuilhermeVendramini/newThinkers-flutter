import 'package:flutter/material.dart';

class WidgetCircleLabelText extends StatelessWidget {
  final String label, text;
  final double maxRadius;
  final Color color;

  const WidgetCircleLabelText({
    @required this.label,
    @required this.text,
    this.maxRadius = 30,
    this.color = Colors.blue,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      maxRadius: maxRadius,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
