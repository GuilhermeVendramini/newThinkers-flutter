import 'package:app08/app/examples/constraintsExample.dart';
import 'package:app08/app/examples/expandedExample.dart';
import 'package:app08/app/examples/fittedBoxExample.dart';
import 'package:app08/app/examples/container100.dart';
import 'package:app08/app/examples/containers50And50.dart';
import 'package:app08/app/examples/containersFlexible.dart';
import 'package:app08/app/examples/containersFractionally.dart';
import 'package:flutter/material.dart';

class PageMain extends StatelessWidget {
  const PageMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //Container100(),
          //Conatiners50And50(),
          //ConatinersFlexible(),
          //ConatinersFractionally(),
          //ConstraintsExample(),
          //ExpandedExample(),
          FittedBoxExample(),
    );
  }
}
