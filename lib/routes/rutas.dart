import 'package:flutter/material.dart';
import 'package:gestion_dinero/pages/add_page.dart';
import 'package:gestion_dinero/pages/authentication_page.dart';
import 'package:gestion_dinero/pages/home_page.dart';
import 'package:gestion_dinero/pages/intro_page.dart';

Map<String, WidgetBuilder> getAplicacionesRoutes() {
  return <String, WidgetBuilder>{
    'splash': (BuildContext context) => (IntroPage()),
    '/': (BuildContext context) => (HomePage()),
    'auth': (BuildContext context) => (AuthenticationPage()),
    'add': (BuildContext context) => (AddPage()),
    /*'': (BuildContext context) => (), */
  };
}
