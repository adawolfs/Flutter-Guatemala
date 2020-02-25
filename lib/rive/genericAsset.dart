import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class GenericAssets extends StatelessWidget {
  const GenericAssets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double defaultWH = 200.0;

    return Row(
      children: <Widget>[
        Container(
          child: GenericAsset(
            "assets/billetera cargada.flr",
            animation: 'billetera cargada',
            width: defaultWH,
            height: defaultWH,
          ),
        ),
        Container(
          child: GenericAsset(
            "assets/roobeo logo intro.flr",
            animation: 'Intro',
            width: defaultWH,
            height: defaultWH,
          ),
        ),
        Container(
          child: GenericAsset(
            "assets/Spaceman_inner_sahdow.flr",
            animation: 'Untitled',
            width: defaultWH,
            height: defaultWH,
          ),
        ),
        Container(
          child: GenericAsset(
            "assets/ok.flr",
            animation: 'Wait',
            width: defaultWH,
            height: defaultWH,
          ),
        ),
        Container(
          child: GenericAsset(
            "assets/Holub.flr",
            animation: 'waiting',
            animationsToCycle: ['fly in', 'waiting', 'flyout', 'bedna'],
            width: defaultWH,
            height: defaultWH,
          ),
        )
      ],
    );
  }
}

class GenericAsset extends StatefulWidget {
  String filename;
  String animation;
  double width;
  double height;
  List<String> animationsToCycle;

  GenericAsset(this.filename,
      {this.animation, this.width, this.height, this.animationsToCycle});

  @override
  GenericAssetState createState() => GenericAssetState();
}

class GenericAssetState extends State<GenericAsset> {
  @override
  Widget build(BuildContext context) {
    ActiveArea activeArea = ActiveArea(
      area: Rect.fromLTWH(0, 0, widget.width, widget.height),
      animationName: widget.animation,
      debugArea: true,
    );

    if (widget.animationsToCycle != null) {
      activeArea = ActiveArea(
        area: Rect.fromLTWH(0, 0, widget.width, widget.height),
        animationsToCycle: widget.animationsToCycle,
        debugArea: true,
      );
    }
    return SmartFlareActor(
      height: widget.height,
      width: widget.width,
      filename: widget.filename,
      startingAnimation: widget.animation,
      activeAreas: [activeArea],
    );
  }
}
