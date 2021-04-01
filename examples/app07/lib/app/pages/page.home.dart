import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('Bem vindo name!')),
    );
  }
}
