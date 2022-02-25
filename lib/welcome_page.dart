import 'package:bmi_calculator/input_page.dart';
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
          SizedBox(
            height: 550,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            child: Center(
              child: Container(
                color: Color.fromRGBO(0, 10, 0, 10),
                width: 200,
                height: 50,
                child: const Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
