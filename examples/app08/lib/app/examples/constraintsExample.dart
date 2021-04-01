import 'package:flutter/material.dart';

// https://flutter.dev/docs/development/ui/layout/constraints

class ConstraintsExample extends StatelessWidget {
  const ConstraintsExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        height: _size.height, // Vai ser limitado pelo minHeight e maxHeight
        width: _size.width, // Vai ser limitado pelo minWidth e maxWidth
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 8,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 250,
          maxHeight: 250,
        ),
      ),
    );

    // return Center(
    //   child: ConstrainedBox(
    //     constraints: BoxConstraints(
    //       minWidth: 100,
    //       minHeight: 100,
    //       maxWidth: 250,
    //       maxHeight: 250,
    //     ),
    //     child: Card(
    //       color: Colors.red,
    //     ),
    //   ),
    // );
  }
}
