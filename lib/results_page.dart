// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:bmi_calculator/formula.dart';

class ResultsPage extends StatefulWidget {
  int weight;
  int height;
  int age;
  ResultsPage(
      {Key? key, required this.height, required this.weight, required this.age})
      : super(key: key);
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Logic logic = Logic();
  double bmiResult = 0;

  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 10, 0, 10),
        title: const Text(
          "BMI CALCULATOR",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "BMI Result",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            Text(
              '${bmiResult.toStringAsFixed(1)}',
              style: const TextStyle(
                fontSize: 70,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
