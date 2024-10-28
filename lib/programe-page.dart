// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lec_code/respage.dart';
import 'package:lec_code/widgets/custume_button.dart';

class Programe_page extends StatefulWidget {
  const Programe_page({super.key});

  @override
  State<Programe_page> createState() => _nameState();
}

class _nameState extends State<Programe_page> {
  int age = 20;
  int weight = 55;
  int height = 176;
  bool ismale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0921),
      appBar: AppBar(
          title: Text(
            "BMI-Calculater",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xfff5f4ff),
            ),
          ),
          backgroundColor: Color(0xff0c0921)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (ismale) ? Color(0xffe91b5a) : Color(0xff1f1e30),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
                SizedBox(width: 15),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (ismale) ? Color(0xff1f1e30) : Color(0xffe91b5a),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            )),

            Expanded(
                child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xff1f1e30),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        activeColor: Color(0xffe91b5a),
                        inactiveColor: Color(0xff0c0921),
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        })
                  ],
                ),
              ),
            )),

            ////////////////////////

            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1f1e30),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                                style: IconButton.styleFrom(
                                    backgroundColor: Color(0xff4f4f62)),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            IconButton.filled(
                                style: IconButton.styleFrom(
                                    backgroundColor: Color(0xff4f4f62)),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(Icons.remove)),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
                SizedBox(width: 15),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffe91b5a),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                                style: IconButton.styleFrom(
                                    backgroundColor: Color(0xff4f4f62)),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add)),
                            IconButton.filled(
                                style: IconButton.styleFrom(
                                    backgroundColor: Color(0xff4f4f62)),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(Icons.remove)),
                          ],
                        )
                      ],
                    ),
                  ),
                ))
              ],
            )),
            SizedBox(
              height: 10,
            ),

            custume_button(
              text: "CalCulate",
              onpressed: () {
                double heightinm = height / 100;
                double fresult = weight / (heightinm * heightinm);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Respage(
                          resulte: fresult,
                        )));
              },
            )
          ],
        ),
      ),
    );
  }
}
