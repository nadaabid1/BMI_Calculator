import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app1/shared/component/components.dart';
class BmiScreen extends StatefulWidget {
  @override
  BmiScreenState createState() => BmiScreenState();
}

class BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 30;
  int age = 13;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isMale
                            ? Colors.pink
                            : Color.fromRGBO(245, 245, 245, 0.1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/man.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: !isMale
                            ? Colors.pink
                            : Color.fromRGBO(245, 245, 245, 0.1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('images/woman.png'),
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(245, 245, 245, 0.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                        activeColor: Colors.pink,
                        inactiveColor: Colors.white10,
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 0.1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                backgroundColor: Colors.pink,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight++',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.pink,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(245, 245, 245, 0.1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                backgroundColor: Colors.pink,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age++',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.pink,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age--',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
         defaultButton(
           width: double.infinity, 
           background: Colors.pink, 
           function: (){
             double result = weight / pow(height / 100, 2);
          print(result.round());
           }, 
           text: 'CALCULATE')
        ],
      ),
    );
  }
}
