import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: FittedBox(
              child: Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: FittedBox(
              child: Icon(
                Icons.portrait,
                color: Colors.white,
                size: 300,
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
