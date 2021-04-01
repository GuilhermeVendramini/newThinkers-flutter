import 'package:flutter/material.dart';

class ConatinersFlexible extends StatelessWidget {
  const ConatinersFlexible({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            width: _size.width,
            child: Text('Flex 2'),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            width: _size.width,
            child: Text('Flex 1'),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            width: _size.width,
            child: Text('Flex 1'),
          ),
        ),
      ],
    );
  }
}
