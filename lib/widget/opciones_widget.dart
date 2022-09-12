import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';
import '../shared_prefs/preferencias_usuario.dart';

Widget opciones(String texto, int num1, context) {
  final p = Provider.of<AjustesProvider>(context);
  final _prefs = PreferenciasUsuario();
  return ListTile(
    onTap: () {
      if (num1 == 2) {
          p.temaSistema = true;
          var brightness = MediaQuery.of(context).platformBrightness;
          p.temaOscuro = brightness == Brightness.dark;
        } else {
          p.temaSistema = false;
          p.temaOscuro = (num1 == 0) ? false : true;
        }
        _prefs.tema = p.temaOscuro;
        _prefs.temaSistema = p.temaSistema;
      /* p.temaOscuro = (num1 == 0) ? false : true;
      _prefs.tema = p.temaOscuro; */
      p.notifyListeners();
    },
    title: Text(
      texto,
      style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
    ),
    trailing: (p.temaSistema && num1 == 2)
          ? const Icon(
              Icons.check,
              color: Color(0xff05F2AF),
            )
          : (p.temaOscuro && !p.temaSistema && num1 == 1)
              ? const Icon(
                  Icons.check,
                  color: Color(0xff05F2AF),
                )
              : (!p.temaOscuro && !p.temaSistema && num1 == 0)
                  ? const Icon(
                      Icons.check,
                      color: Color(0xff05F2AF),
                    )
                  : null
  );
}
