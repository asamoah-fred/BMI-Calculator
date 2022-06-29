// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'enum_file.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedCard;
  // int? sliderValue;
  // double value = 10;
  // bool _value = true;
  int _currentSliderValue = 180;
  int weight = 50;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 10, 0, 10),
        title: const Text(
          "BMI CALCULATOR",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      // backgroundColor: Color.fromRGBO(0, 90, 0, 90),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard == Gender.male
                            ? Colors.cyan
                            : Color.fromARGB(246, 1, 31, 1),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = Gender.female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard == Gender.female
                            ? Colors.cyan
                            : Color.fromARGB(246, 1, 31, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // This is the Second Row
          Expanded(
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HEIGHT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _currentSliderValue.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 75,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                ),
                              ],
                            ),
                            Slider(
                              value: _currentSliderValue.toDouble(),
                              min: 10,
                              max: 255.0,
                              onChanged: (value) {
                                setState(
                                  () {
                                    _currentSliderValue = value.toInt();
                                  },
                                );
                              },
                              inactiveColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(246, 1, 31, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // This is Third Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Color.fromARGB(246, 1, 31, 1),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color.fromARGB(246, 1, 31, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(246, 1, 31, 1),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                          ),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Color.fromARGB(246, 1, 31, 1),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color.fromARGB(246, 1, 31, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(246, 1, 31, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    height: _currentSliderValue,
                    weight: weight,
                    age: age,
                  ),
                ),
              );
            },
            child: Container(
              color: Color.fromARGB(246, 1, 31, 1),
              width: double.infinity,
              height: 80,
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 26,
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
