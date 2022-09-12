import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

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
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Flat Button'),
          )
        ],
      ),
    );
  }
}
