import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

   bool get tema {
    return _prefs.getBool('tema') ?? false;
  }

  set tema(bool t) {
    _prefs.setBool('tema', t);
  }

  bool get temaSistema {
    return _prefs.getBool('temaSistema') ?? false;
  }

  set temaSistema(bool t) {
    _prefs.setBool('temaSistema', t);
  }
}
