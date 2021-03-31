import 'package:app04/app/pages/page.2.dart';
import 'package:app04/app/pages/page.3.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Page 1'),
            ElevatedButton(
              child: Text('Próxima >>'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                    settings: RouteSettings(
                      arguments: 'Vindo da Page1',
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Última >>'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
            ),
            ElevatedButton(
              child: Text('Substitua Page1 pela Page3'),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
