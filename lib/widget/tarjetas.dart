import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';

Widget tarjeta(context) {
  final p = Provider.of<AjustesProvider>(context);
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: (!p.temaOscuro)
            ? Colors.green.shade300
            : Color.fromARGB(255, 64, 118, 102)),
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    width: double.infinity,
    height: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Coche",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Total: ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "345",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Ahorrado: ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "345",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Pendiente: ",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "345",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 2000,
                  radius: 45.0,
                  lineWidth: 6.0,
                  percent: 0.50,
                  center: const Text("90%",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  progressColor: Colors.red,
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
