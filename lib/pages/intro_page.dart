import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    _cuentaAtras();
  }

  _cuentaAtras() async {
    final p = Provider.of<AjustesProvider>(context, listen: false);
    //p.cogeTema();
    var duracion = Duration(seconds: 3);
    return Timer(duracion, () {
      Navigator.pushReplacementNamed(context, 'auth');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff05F2AF),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  'assets/intro.png',
                  scale: 1.5,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
