import 'package:flutter/material.dart';

class ConatinersFractionally extends StatelessWidget {
  const ConatinersFractionally({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    /**
     * Conta do Fractionally
     */
    final double _maxHeightContainer = 200;
    final int _items = 2;
    final double _factor = 0.5;
    final _result = _maxHeightContainer / _items * _factor;

    print(_result);

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        height: _maxHeightContainer,
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                heightFactor: _factor,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  width: _size.width,
                  child: Text('Altura: $_result'),
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: _factor,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  width: _size.width,
                  child: Text('Altura: $_result'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
