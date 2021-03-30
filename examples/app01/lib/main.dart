import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey.shade300,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.blueGrey,
            fontSize: 18.0,
          ),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
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
                color: _counter >= 1 ? Colors.blue : Colors.red,
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
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    maxRadius: 30.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('$_max'),
                        const Text('Max'),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    maxRadius: 30.0,
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
                  RaisedButton(
                    color: Colors.white,
                    child: const Text(
                      '+ 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: _incrementCounter,
                  ),
                  RaisedButton(
                    color: Colors.black,
                    splashColor: Colors.white,
                    child: const Text(
                      '- 1',
                      style: TextStyle(
                        color: Colors.deepOrange,
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
                  RaisedButton(
                    color: Colors.white,
                    child: const Text(
                      '+ 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () {
                      _incrementCounter(value: 2);
                    },
                  ),
                  RaisedButton(
                      color: Colors.black,
                      splashColor: Colors.white,
                      child: const Text(
                        '- 2',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () {
                        _decrementCounter(value: 2);
                      }),
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
