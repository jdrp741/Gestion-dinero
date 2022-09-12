import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../shared_prefs/preferencias_usuario.dart';

class AjustesProvider extends ChangeNotifier {
  final _prefs = PreferenciasUsuario();
  bool temaOscuro = false;
  bool temaSistema = false;

  AjustesProvider() {
    cogeTema();
  }

  cogeTema() {
    temaSistema = _prefs.temaSistema;
    temaOscuro = _prefs.tema;
    if (_prefs.temaSistema) {
      var brightness = SchedulerBinding.instance!.window.platformBrightness;
      temaOscuro = brightness == Brightness.dark;
    }
    notifyListeners();
  }
}
