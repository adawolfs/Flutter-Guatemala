import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class DayNightToggle extends StatefulWidget {
  DayNightToggle({Key key}) : super(key: key);

  static var animations = [
    'night_idle',
    'day_idle',
    'switch_night',
    'switch_day',
  ];

  String _animation = animations[0];

  void setAnimation(String value) => this._animation = value;
  String getAnimation() => this._animation;

  @override
  DayNightToggleState createState() => DayNightToggleState();
}

class DayNightToggleState extends State<DayNightToggle> {
  void toggleAnimation() {
    setState(() {
      if (widget.getAnimation() == DayNightToggle.animations[0]) {
        widget.setAnimation(DayNightToggle.animations[1]);
      } else {
        widget.setAnimation(DayNightToggle.animations[0]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var widgetHeight = 200.0;
    var widgetWidth = 200.0;
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: widgetWidth,
          maxHeight: widgetHeight,
        ),
        child: SmartFlareActor(
          height: widgetHeight,
          width: widgetWidth,
          filename: "assets/toggle.flr",
          startingAnimation: widget.getAnimation(),
          activeAreas: [
            ActiveArea(
                area: Rect.fromLTWH(0, 0, widgetWidth, widgetHeight),
                animationsToCycle: ["switch_day", "switch_night"],
                onAreaTapped: () => {toggleAnimation()},
                debugArea: true)
          ],
        ));
  }
}
