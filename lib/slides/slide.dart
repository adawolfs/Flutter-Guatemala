import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dex_slides/rive/dayNightToggle.dart';
import 'package:flutter_dex_slides/rive/genericAsset.dart';
import 'package:flutter_dex_slides/rive/human.dart';
import 'package:flutter_dex_slides/rive/multiOptionButton.dart';

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
  //NOTE SLIDE_LIST

  static List<Widget> SLIDE_LIST = <Widget>[
    mainSlide(),
    flutterDex(),
    thirdSlide(),
    whySVGSlide(),
    whyFlutterRiveSlide(),
    humanSlide(),
    samplesSlide(),
    // demo(),
  ];

  static Widget mainText(String text,
      {double size = 25, List<InlineSpan> children}) {
    if (children == null) {
      children = [TextSpan(text: text)];
    }
    return RichText(
      text: TextSpan(
        children: children,
        style: TextStyle(
            fontFamily: 'PokemonGB',
            color: Colors.white,
            fontSize: size,
            background: new Paint()
              ..color = Color(0xFF004a42)
              ..style = PaintingStyle.stroke),
      ),
    );
  }

  static Widget mainSlide() {
    // return secondSlide();
    return trainerInfo();
  }

  static Widget trainerInfo() {
    return Slide(
      image: 'assets/bk1.png',
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20, left: 100),
              child: Image.asset("assets/ash_pokemon_0.gif"),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText("", children: <TextSpan>[
                    TextSpan(text: "\nTrainer Info\n"),
                    TextSpan(text: "Name: Alvin Estrada\n"),
                    TextSpan(text: "Adventure Started: +8 years ago\n"),
                    TextSpan(text: "About Me:\n"),
                    TextSpan(
                        text:
                            "- Pokemon Trainer\n- Full Stack Developer\n- Infrastructure Engineer\n"),
                    TextSpan(
                        text:
                            "- Organizador de Kubernetes Guatemala\n- Fundador de Inteligencia Artificial Guatemala.\n"),
                    TextSpan(text: "Email: adawolfs@gmail.com\n"),
                    TextSpan(text: "Web: https://adawolfs.github.com\n"),
                    TextSpan(
                        text:
                            "\n\nDisclaimer:\nI am not an expert, but I've watched a lot \nof youtube videos\n"),
                    TextSpan(text: "\n"),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget flutterDex() {
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
              margin: EdgeInsets.only(top: 20, left: 100, right: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText("",
                      children: <TextSpan>[
                        TextSpan(
                          text: "\nBienvenidos a Flutter en Español\n",
                        ),
                        TextSpan(text: "Contenido:\n"),
                        TextSpan(text: "  - Que es Rive\n"),
                        TextSpan(text: "  - Por qué Flutter + Rive\n"),
                        TextSpan(text: "  - Por qué usar de SVG\n"),
                        TextSpan(text: "  - Demo!!!!!!\n"),
                      ],
                      size: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget thirdSlide() {
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
              margin: EdgeInsets.only(top: 20, left: 100, right: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "\nRive es una herramienta de diseño interactivo en tiempo real basado en SVG la cual permite diseñar, animar e inmediatamente manipular los assets en cualquier plataforma.",
                    size: 30,
                  ),
                  mainText(
                    "\nExisten dos partes fundamentales en Rive: el editor y los motores. El editor es donde puedes crear tus diseños y animarlos. Los motores son librerias open source que permiten cargar y manipular los archivos de Rive en Swift, Flutter, Android, JavaScript/WebGL, React, C++ y más.",
                    size: 30,
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
              margin: EdgeInsets.only(top: 20, left: 100, right: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "\nPor que Flutter + Rive:\nA pesar de que Flutter provee una extensa api y biblioteca de Widgets para el desarrollo de interfaces, es comun encontrarce con diseños de interfaz que representarian un alto grado de complejidad, para ello Rive provee soporte para realizar diseño y animacion de assets basado en SVG.",
                    size: 40,
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
              margin: EdgeInsets.only(top: 20, left: 100, right: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "\nPor que SVG:\n- Al estar basado en vectores numericos los assets tendran un tamaño reducido.\n- A diferencia de las imagenes rasterizadas la resolución de un SVG no se ve afectada por el escalado.",
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

  static Widget humanSlide() {
    return Slide(
      image: 'assets/grid.jpg',
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 100, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "\n Hello World:",
                    size: 60,
                  ),
                  Human()
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
              margin: EdgeInsets.only(top: 20, left: 100, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "\n Rive Examples:",
                    size: 60,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        //NOTE Rive Widgets
                        child: DayNightToggle(),
                      ),
                      Container(
                        child: MultiOptionButton(),
                      ),
                    ],
                  ),
                  // GENERIC ASSETS
                  GenericAssets(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget demo() {
    return Slide(
      image: 'assets/grid.jpg',
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 100, right: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  mainText(
                    "\n Diseño:",
                    size: 60,
                  ),
                  mainText(
                    "",
                    children: <TextSpan>[
                      TextSpan(
                        text: "\n1st. Meetup Flutter GuatemalaS\n",
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            print('test');
                            // launch('https://www.google.com');
                          },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
