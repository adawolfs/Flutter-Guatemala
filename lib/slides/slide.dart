import 'package:flutter/material.dart';
import 'package:flutter_dex_slides/rive/dayNightToggle.dart';
import 'package:flutter_dex_slides/rive/genericAsset.dart';
import 'package:flutter_dex_slides/rive/multiOptionButton.dart';
import 'package:flutter_dex_slides/rive/okCheck.dart';
import 'package:flutter_dex_slides/rive/spaceMan.dart';

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
  static Widget mainText(String text, {double size = 40}) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontFamily: 'CreatorCredits',
          color: Colors.white,
          fontSize: size,
        ),
      ),
    );
  }

  static Widget mainSlide() {
    return samplesSlide();
  }

  static Widget firstSlide() {
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
              child: Image.asset(
                "assets/flutterzal.gif",
                height: 500,
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 60),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       mainText("Nombre: Alvin Estrada"),
            //       mainText("Experience: 7+ years"),
            //       mainText("Email: adawolfs@gmail.com"),
            //       mainText("Web: https://adawolfs.github.com"),
            //       mainText("Role: Infrastructure Developer (Yes, I do DevOps)"),
            //       mainText("Disclaimer:"),
            //       mainText(
            //         "I’m not an expert, but I have watched a number of youtube videos",
            //         size: 50,
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  static Widget secondSlide() {
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
              child: Image.asset(
                "assets/walking.gif",
                height: 60,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 230, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "Rive es una herramienta de diseño interactivo en tiempo real la cual permite diseñar, animar e inmediatamente manipular los assets en cualquier plataforma.",
                    size: 50,
                  ),
                  mainText(
                    "Existen dos partes fundamentales en Rive: el editor y los motores. El editor es donde puedes crear tus diseños y animarlos. Los motores son librerias open source que permiten cargar y manipular los archivos de Rive en Swift, Rive files in Swift, Flutter, Android, JavaScript/WebGL, React, C++ y más.",
                    size: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget whyFlutterRiveSlide() {
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
              child: Image.asset(
                "assets/walking.gif",
                height: 60,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 230, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "Por qué Flutter + Rive:\nA pesar de que Flutter provee una extensa api y biblioteca de Widgets para el desarrollo de interfaces, es comun encontrarce con diseños de interfaz que representarian un alto grado de complejidad, para ello Rive provee soporte para realizar diseño y animacion de assets basado en SVG.",
                    size: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget whySVGSlide() {
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
              child: Image.asset(
                "assets/walking.gif",
                height: 60,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 230, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "Por qué SVG:\n- Al estar basado en XML los assets tendran un tamaño reducido.\n- A diferencia de las imagenes rasterizadas la resolución de un SVG no se ve afectada por el escalado.",
                    size: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget samplesSlide() {
    return Slide(
      image: 'assets/grid.jpg',
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 230, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "Diseño:",
                    size: 60,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: DayNightToggle(),
                      ),
                      Container(
                        child: MultiOptionButton(),
                      ),
                    ],
                  ),
                  GenericAssets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
