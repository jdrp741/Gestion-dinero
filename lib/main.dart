import 'package:flutter/material.dart';
import 'package:gestion_dinero/provider/provider.dart';
import 'package:gestion_dinero/routes/rutas.dart';
import 'package:gestion_dinero/shared_prefs/preferencias_usuario.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final _prefs = PreferenciasUsuario();
  await _prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AjustesProvider()),
      ],
      child: App(),
    );
  }
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<AjustesProvider>(context);
    return MaterialApp(
      title: 'Gestion dinero',
      theme: (p.temaSistema && p.temaOscuro)
          ? ThemeData.dark()
          : (!p.temaSistema && p.temaOscuro)
              ? ThemeData.dark()
              : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: getAplicacionesRoutes(),
    );
  }
}
