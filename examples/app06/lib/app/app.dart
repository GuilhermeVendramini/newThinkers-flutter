import 'package:flutter/material.dart';

import 'pages/page.main.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 28.0,
          ),
          button: TextStyle(
            fontSize: 24.0,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageMain(),
    );
  }
}
