import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget tarjeta2(context) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.green.shade50,
            Colors.green.shade200,
            Colors.green.shade300,
            Colors.green.shade400,
            Colors.green.shade300,
            Colors.green.shade200,
            Colors.green.shade50,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    width: double.infinity,
    height: 100,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Total:",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                "65488",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          ),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width - 50,
            animation: true,
            lineHeight: 25.0,
            animationDuration: 2000,
            percent: 0.9,
            barRadius: Radius.circular(10),
            center: Text(
              "90.0%",
              style: TextStyle(color: Colors.black),
            ),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Colors.greenAccent,
          ),
        ]),
  );
}
