import 'package:app04/app/pages/page.3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context).settings.arguments ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Page 2'),
            Text('Argumento: $args'),
            ElevatedButton(
              child: Text('Próxima >>'),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Page3()),
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
            ElevatedButton(
              child: Text('<< Anterior'),
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.of(context).pop();
                if (Navigator.canPop(context)) Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text('Substitua Page2 pela Page3'),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
            ),
            ElevatedButton(
              child: Text('Remova anterior e substitua Page2 pela Page3'),
              onPressed: () {
                Navigator.pop(context);
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
