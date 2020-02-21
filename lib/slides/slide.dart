import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  Slide({Key key, this.image, this.child}) : super(key: key);

  final String image;
  final Widget child;
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  Widget child = Container();

  void setChild(Widget child) {
    setState(() {
      this.child = child;
    });
  }

  Widget _getChild() {
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}

class Slides {
  static Widget mainSlide() {
    return Slide(
      image: 'assets/bk1.png',
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset("assets/FlutterDeX.png"),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset("assets/walking.gif"),
            ),
          ],
        ),
      ),
    );
  }
}
