import 'dart:math';
import 'package:bmiapp/MainHeader/appBarHeader.dart';
import 'package:flutter/material.dart';
class BmiPage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;
  const BmiPage({super.key, required this.isDarkMode, required this.onThemeToggle});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {

  int height = 160;
  int wight = 60;

  /// BMI Calculate Function
  double BmiCal(int height, int wight) {
    double h = height / 100;
    return wight / pow(h, 2);
  }
  void onShow(double bmi) {
    showDialog(
      context: context,
      builder: (_) {
        String msg = "";
        if (bmi > 24) {
          msg = "Overweight";
        } else if (bmi < 18) {
          msg = "Underweight";
        } else {
          msg = "Normal";
        }

        return AlertDialog(
          title: const Text("Your BMI"),
          content: Text(
            "${bmi.toStringAsFixed(2)} → $msg",
            style: const TextStyle(fontSize: 20),
          ),
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHeader(  isDarkMode: widget.isDarkMode,
        onThemeToggle: widget.onThemeToggle,),
      body:  Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 3,
            blurStyle: BlurStyle.outer,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            width: double.infinity,
            color: Colors.black12,
            child: Column(
              children: [
                Slider(
                  inactiveColor: Colors.grey,
                  activeColor: Colors.pink,
                  max: 220,
                  min: 100,
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height = value.toInt();
                    });
                  },
                ),
                Text(
                  'Height $height cm',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Colors.black45,
                  ),
                ),
                Text(
                  'Weight $wight Kg',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.amberAccent.shade200,
                        ),
                        child: const Icon(Icons.remove),
                      ),
                      onTap: () {
                        setState(() {
                          if (wight > 1) wight--;
                        });
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.amberAccent.shade200,
                        ),
                        child: const Icon(Icons.add),
                      ),
                      onTap: () {
                        setState(() {
                          wight++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(
              onPressed: () {
                double result = BmiCal(height, wight);
                print(result);
                onShow(result);
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'BMI Calculate',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
