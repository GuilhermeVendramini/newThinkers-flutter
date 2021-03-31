import 'package:flutter/material.dart';

import 'pages/page.1.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 40.0,
          ),
          button: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      home: Page1(),
    );
  }
}
