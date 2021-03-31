import 'package:app03/app/shared/widgets/buttons/widget.button.default.dart';
import 'package:app03/app/shared/widgets/circles/widget.circle.labelText.dart';
import 'package:flutter/material.dart';

class PageMain extends StatefulWidget {
  PageMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  int _counter = 0, _max = 0, _min = 0;

  void _incrementCounter({int value = 1}) {
    setState(() {
      _counter += value;

      if (_counter > _max) _max = _counter;
    });
  }

  void _decrementCounter({int value = 1}) {
    setState(() {
      _counter -= value;
      if (_counter < _min) _min = _counter;
    });
  }

  void _resetValues() {
    setState(() {
      _counter = 0;
      _max = 0;
      _min = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Increment or decrement app',
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$_counter',
              style: TextStyle(
                color: _counter >= 1 ? Colors.blue : Colors.deepOrange,
                fontSize: 36.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetCircleLabelText(
                    label: 'Max',
                    text: '$_max',
                  ),
                  WidgetCircleLabelText(
                    label: 'Min',
                    text: '$_min',
                    color: Colors.deepOrange,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetButtonDefault(
                    text: '+ 1',
                    onPressed: _incrementCounter,
                  ),
                  WidgetButtonDefault(
                    text: '- 1',
                    onPressed: _decrementCounter,
                    backgroundColor: Colors.black,
                    color: Colors.deepOrange,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetButtonDefault(
                    text: '+ 2',
                    onPressed: () {
                      _incrementCounter(value: 2);
                    },
                  ),
                  WidgetButtonDefault(
                    text: '- 2',
                    onPressed: () {
                      _decrementCounter(value: 2);
                    },
                    backgroundColor: Colors.black,
                    color: Colors.deepOrange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: _resetValues,
      ),
    );
  }
}
