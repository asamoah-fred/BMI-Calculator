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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Center(
                child: Image.asset(
                  'assets/bm.jpg',
                  height: 120,
                  width: 120,
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InputPage(),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    color: const Color.fromRGBO(0, 10, 0, 10),
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
        ),
      ),
    );
  }
}
