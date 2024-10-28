import 'package:flutter/material.dart';

class Respage extends StatelessWidget {
  const Respage({super.key, required this.resulte});
  final double resulte;
  String getstatus() {
    if (resulte <= 18.4)
      return "underWeight";
    else if (resulte <= 24.9) {
      return "Normal";
    } else if (resulte <= 39.4) {
      return "OverWeight";
    } else {
      return "obese";
    }
  }

  Color getBMIColor(double bmi) {
    bmi = resulte;
    if (bmi < 18.5) {
      return Colors.blue; // Color for "Underweight"
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return Colors.green; // Color for "Normal"
    } else if (bmi >= 25 && bmi < 29.9) {
      return Colors.orange; // Color for "Overweight"
    } else {
      return Colors.red; // Color for "Obese"
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0921),
      appBar: AppBar(
        backgroundColor: Color(0xff0c0921),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getstatus(),
              style: TextStyle(
                  color: getBMIColor(resulte),
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              resulte.toStringAsFixed(2),
              style: TextStyle(
                  color: Color(0xffe9eafc),
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            
          ],
        ),
      ),
    );
  }
}
