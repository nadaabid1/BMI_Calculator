import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app1/modules/bmi_result/bmi_result_screen.dart';

Widget defaultButton({
 @required double width,
 @required Color background,
 @required Function function,
 @required String text,
  bool isMale = true,
  double height = 120.0,
  int weight = 30,
  int age = 13,
}) => Container(
      height: 55.0,
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: () {
          double result = weight / pow(height / 100, 2);
          print(result.round());
          BuildContext context;
                    Navigator.push(
                      context,
            MaterialPageRoute(
              builder: (context) => BmiResultScreen(
                age: age,
                isMale: isMale,
                result: result.round(),
              ),
            ),
          );
        },
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
