import 'package:flutter/material.dart';

import 'shared/widgets/pages/widget.page.main.dart';

class App extends StatelessWidget {
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
      home: WidgetPageMain(title: 'Counter'),
    );
  }
}
