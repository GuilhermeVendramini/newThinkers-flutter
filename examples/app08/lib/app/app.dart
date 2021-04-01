import 'package:flutter/material.dart';

import 'pages/page.main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: PageMain(),
    );
  }
}