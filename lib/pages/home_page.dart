import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestion_dinero/widget/opciones_widget.dart';
import 'package:gestion_dinero/widget/tarjeta2.dart';
import 'package:gestion_dinero/widget/tarjetas.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final p = Provider.of<AjustesProvider>(context);
    return Scaffold(
      backgroundColor: (p.temaOscuro) ? Colors.black : Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "assets/imagin.png",
          color: Color(0xff05F2AF),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: (p.temaOscuro) ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          onPressed: () {
            _showDialog(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'add');
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            tarjeta2(context),
            tarjeta(context),
            tarjeta(context),
            tarjeta(context)
          ]),
        ),
      ),
    );
  }

  _showDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Center(child: Text("Elija el tema que desee")),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  opciones("Claro", 0, context),
                  Divider(
                    thickness: 1,
                  ),
                  opciones("Oscuro", 1, context),
                  Divider(
                    thickness: 1,
                  ),
                  opciones("Sistema", 2, context),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ));
        });
  }
}
