import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  int? weight;
  int? height;
  int? age;
  ResultsPage(
      {Key? key,
      @required this.height,
      @required this.weight,
      @required this.age})
      : super(key: key);
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI CALCULATOR",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          Text(
            "BMI Result",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ],
      ),
    );
  }
}
