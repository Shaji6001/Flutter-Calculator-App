import 'package:flutter/material.dart';

void main()=>runApp(Calculator());
class Calculator extends StatelessWidget {
  TextEditingController getVal1=TextEditingController();
  TextEditingController getVal2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),backgroundColor: Colors.pinkAccent,

        ),body: Container(padding: EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: getVal1,
              decoration: InputDecoration(
                hintText: "Enter Fisrt Value",border: OutlineInputBorder()
              ),
            ),SizedBox(height: 10.0,width: 10.0,),
            TextField(controller: getVal2,
              decoration: InputDecoration(
                hintText: "Enter Second Value",border: OutlineInputBorder()
              ),
            ),SizedBox(height: 10.0,),
            RaisedButton(onPressed: (){
              int getval1=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              int result=getval1+getval2;
              print(result);

            },textColor: Colors.pink,child: Text("ADD"),),SizedBox(height: 10.0,),
            RaisedButton(onPressed: (){
              int getval1=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              int result=getval1-getval2;
              print(result);

            },textColor: Colors.black54,
            child: Text("SUBSTRACT"),color: Colors.deepPurpleAccent,),
            RaisedButton(onPressed: (){
              int getval1=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              int result=getval1*getval2;
              print(result);

            },child: Text("MULTIPLY"),color: Colors.lightGreen,),
            RaisedButton(onPressed: (){
              int getval1=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              double  result=getval1/getval2;
              print(result);

            },child: Text("DIVISION"),color: Colors.purple,)
          ],
        ),
      ),
      ),
    );
  }
}

