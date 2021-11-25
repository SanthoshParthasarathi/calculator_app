import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/calculator_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNum;
  int secondNum;
  String history = '';
  String textToDisplay = '';
  String res;
  String operation;

  void onButtonClick(String buttonValue) {
    print(buttonValue);
    if (buttonValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (buttonValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (buttonValue == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (buttonValue == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (buttonValue == '+' ||
        buttonValue == '-' ||
        buttonValue == 'X' ||
        buttonValue == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = buttonValue;
    } else if (buttonValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + buttonValue).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF28527a),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                history,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: Color(0x66FFFFFF),
                  ),
                ),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                textToDisplay,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
            ),
            alignment: Alignment(1.0, 1.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                  callback: onButtonClick,
                  text: 'AC',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: 'C',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '<',
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '/',
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  fontSize: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                  callback: onButtonClick,
                  text: '9',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '8',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '7',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: 'X',
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  fontSize: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                  callback: onButtonClick,
                  text: '6',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '5',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '4',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '-',
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  fontSize: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                  callback: onButtonClick,
                  text: '3',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '2',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '1',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '+',
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  fontSize: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                  callback: onButtonClick,
                  text: '+/-',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '0',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '.',
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  fontSize: 20),
              CalculatorButton(
                  callback: onButtonClick,
                  text: '=',
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  fontSize: 20),
            ],
          ),
        ],
      )),
    );
  }
}
