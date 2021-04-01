import 'package:flutter/material.dart';

import 'pages/page.main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 20.0,
          ),
        )
      ),
      home: PageMain(),
    );
  }
}