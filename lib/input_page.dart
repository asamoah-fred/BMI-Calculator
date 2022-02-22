// ignore_for_file: prefer_const_constructors

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
  double _currentSliderValue = 20;
  int weight = 50;
  int age = 30;

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
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
                            : Colors.lightBlueAccent,
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
                            "FEMAlE",
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
                            : Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // This is the Second Row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
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
                          value: _currentSliderValue,
                          // min: 1,
                          max: 255,
                          // divisions: 10,
                          divisions: 20,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (value) {
                            setState(
                              () {
                                _currentSliderValue = value;
                              },
                            );
                          },
                          inactiveColor: Colors.white,
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // This is Third Row
          Expanded(
            child: Row(
              children: [
                Expanded(
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
                                weight++;
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.lightBlue,
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
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
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
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.lightBlue,
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
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
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
        ],
      ),
    );
  }
}
