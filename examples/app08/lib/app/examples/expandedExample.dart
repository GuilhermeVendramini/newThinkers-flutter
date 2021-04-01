import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour."),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
