import 'package:flutter/material.dart';

class Conatiners50And50 extends StatelessWidget {
  const Conatiners50And50({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          height: _size.height * 0.50,
          width: _size.width,
          child: Text('50%'),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          height: _size.height * 0.50,
          width: _size.width,
          child: Text('50%'),
        ),
      ],
    );
  }
}
