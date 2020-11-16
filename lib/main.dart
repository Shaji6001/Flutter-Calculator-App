
import 'package:flutter/material.dart';
import 'package:flutter_appcalculatorapp/Screens/Login%20Page.dart';

void main()=>runApp(Calculator());
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         title: Text("Calculator"),backgroundColor: Colors.lightGreen,
       ),body: LoginPage(),
     ),
    );
  }
}
