import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class OKCheck extends StatefulWidget {
  OKCheck({Key key}) : super(key: key);

  @override
  OKCheckState createState() => OKCheckState();
}

class OKCheckState extends State<OKCheck> {
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
          filename: "assets/ok.flr",
          activeAreas: [
            ActiveArea(
              area: Rect.fromLTWH(0, 0, widgetWidth, widgetHeight),
              animationName: 'Wait',
              debugArea: true,
            )
          ],
        ));
  }
}
