import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: CupertinoColors.systemGrey,
        textTheme: CupertinoTextThemeData(
          primaryColor: CupertinoColors.black,
          textStyle: TextStyle(
            color: CupertinoColors.white,
            fontSize: 18.0,
          ),
        ),
      ),
      home: MyHomePage(title: 'Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  final _divider20 = const SizedBox(
    height: 20.0,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Center(
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
                color: _counter >= 1
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.activeOrange,
                fontSize: 36.0,
              ),
            ),
            _divider20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: CupertinoColors.activeBlue,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('$_max'),
                        const Text('Max'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: CupertinoColors.activeOrange,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('$_min'),
                        const Text('Min'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    color: CupertinoColors.white,
                    child: const Text(
                      '+ 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                    onPressed: _incrementCounter,
                  ),
                  CupertinoButton(
                    color: CupertinoColors.black,
                    pressedOpacity: 0.4,
                    child: const Text(
                      '- 1',
                      style: TextStyle(
                        color: CupertinoColors.activeOrange,
                      ),
                    ),
                    onPressed: _decrementCounter,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CupertinoButton(
                    color: CupertinoColors.white,
                    child: const Text(
                      '+ 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeBlue,
                      ),
                    ),
                    onPressed: () {
                      _incrementCounter(value: 2);
                    },
                  ),
                  CupertinoButton(
                    color: CupertinoColors.black,
                    pressedOpacity: 0.4,
                    child: const Text(
                      '- 2',
                      style: TextStyle(
                        color: CupertinoColors.activeOrange,
                      ),
                    ),
                    onPressed: () {
                      _decrementCounter(value: 2);
                    },
                  ),
                ],
              ),
            ),
            _divider20,
            CupertinoButton(
              color: CupertinoColors.systemIndigo,
              pressedOpacity: 0.4,
              child: const Text(
                'Reset',
              ),
              onPressed: _resetValues,
            ),
          ],
        ),
      ),
    );
  }
}
