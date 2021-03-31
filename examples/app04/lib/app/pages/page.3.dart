import 'package:app04/app/pages/page.1.dart';
import 'package:app04/app/pages/page.2.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Page 3'),
            ElevatedButton(
              child: Text('<< Anterior'),
              onPressed: () {
                //Navigator.pop(context);
                if (Navigator.canPop(context)) Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('Substitua Page3 pela Page1'),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
            ElevatedButton(
              child:
                  Text('Remova todas anteriores e substitua Page3 pela Page2'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
