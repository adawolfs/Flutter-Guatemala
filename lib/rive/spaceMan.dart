import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class SpaceMan extends StatefulWidget {
  SpaceMan({Key key}) : super(key: key);

  @override
  SpaceManState createState() => SpaceManState();
}

class SpaceManState extends State<SpaceMan> {
  @override
  Widget build(BuildContext context) {
    var widgetHeight = 100.0;
    var widgetWidth = 100.0;
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: widgetWidth,
          maxHeight: widgetHeight,
        ),
        child: SmartFlareActor(
          height: widgetHeight,
          width: widgetWidth,
          filename: "assets/Spaceman_inner_sahdow.flr",
          startingAnimation: 'Untitled',
        ));
  }
}
