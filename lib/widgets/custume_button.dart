// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class custume_button extends StatelessWidget {
  const custume_button({
    super.key,
    this.height = 50,
    required this.text,
    required this.onpressed,
  });
  final String text;
  final double height;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: height,
        child: ElevatedButton(
            onPressed: onpressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffda1d55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(text,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ))));
  }
}
