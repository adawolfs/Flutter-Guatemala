import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class Human extends StatefulWidget {
  Human({Key key}) : super(key: key);

  @override
  _HumanState createState() => _HumanState();
}

class _HumanState extends State<Human> {
  var widgetHeight = 600.0;
  var widgetWidth = 1000.0;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: widgetWidth,
        maxHeight: widgetHeight,
      ),
      child: SmartFlareActor(
        height: widgetHeight,
        width: widgetWidth,
        filename: "assets/human_animation.flr",
        activeAreas: [
          ActiveArea(
            area: Rect.fromLTWH(0, 0, widgetWidth, widgetHeight),
            animationsToCycle: [
              "human_5",
              "human_3",
              "human_1",
              "human_4",
              "human_2",
            ],
            // debugArea: true,
          )
        ],
      ),
    );
  }
}
