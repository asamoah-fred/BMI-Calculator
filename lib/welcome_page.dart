import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Container(
            child: Text(
              "GET STARTED",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
