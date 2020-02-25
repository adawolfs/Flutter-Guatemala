import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class MultiOptionButton extends StatefulWidget {
  MultiOptionButton({Key key}) : super(key: key);

  @override
  _MultiOptionButtonState createState() => _MultiOptionButtonState();
}

class _MultiOptionButtonState extends State<MultiOptionButton> {
  @override
  Widget build(BuildContext context) {
    var widgetHeight = 300.0;
    var widgetWidth = 200.0;
    return Container(
      child: SmartFlareActor(
        height: widgetHeight,
        width: widgetWidth,
        filename: "assets/MultiOptionButton.flr",
        startingAnimation: "deactivate",
        activeAreas: [
          ActiveArea(
            area: Rect.fromLTWH(
              0,
              widgetHeight / 2,
              widgetWidth,
              widgetHeight / 2,
            ),
            animationsToCycle: ['activate', 'deactivate'],
            // debugArea: true,
          ),
          RelativeActiveArea(
            area: Rect.fromLTWH(
              0.2,
              0.2,
              0.2,
              0.2,
            ),
            animationName: 'camera_tapped',
            // debugArea: true,
          ),
          RelativeActiveArea(
            area: Rect.fromLTWH(
              0.4,
              0.2,
              0.2,
              0.2,
            ),
            animationName: 'pulse_tapped',
            // debugArea: true,
          ),
          RelativeActiveArea(
            area: Rect.fromLTWH(
              0.6,
              0.2,
              0.2,
              0.2,
            ),
            animationName: 'image_tapped',
            // debugArea: true,
          ),
        ],
      ),
    );
  }
}
