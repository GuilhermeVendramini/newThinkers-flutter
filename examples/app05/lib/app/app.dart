import 'package:app05/app/pages/page.3.dart';
import 'package:flutter/material.dart';

import 'pages/page.1.dart';
import 'pages/page.2.dart';
import 'pages/pageNotFound.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute(
          builder: (context) => PageNotFound(),
        );
      },
    );
  }
}
