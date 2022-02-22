import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
