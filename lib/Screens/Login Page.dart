import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController getVal1=TextEditingController();
  TextEditingController getVal2=TextEditingController();
  TextEditingController getRes=TextEditingController();
  int result=0;
  double results=0;
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: getVal1,
              style: TextStyle(fontSize: 30.0),
              decoration: InputDecoration(
                hintText: "First Value",border: OutlineInputBorder(),

              ),
            ),SizedBox(height: 10.0,width: 10.0,),
            TextField(controller: getVal2,
              style: TextStyle(fontSize: 30.0),decoration:
              InputDecoration(
                  hintText: "Second Value",border: OutlineInputBorder()
              ),

            ),SizedBox(height: 15.0,),

            RaisedButton(onPressed: (){
              int getval=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              setState(() {
                result=getval+getval2;
              });

              print(result);
            },
              color: Colors.deepPurple,child: Text("ADD"),splashColor: Colors.red,),
            RaisedButton(onPressed: (){
              int getval1=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              setState(() {
                result=getval1-getval2;
              });
              print(result);
            },color: Colors.amber,splashColor: Colors.red,
              child: Text("SUBTRACT"),),

            RaisedButton(onPressed: (){
              int getval1=int.parse(getVal1.text);
              int getval2=int.parse(getVal2.text);
              setState(() {
                result=getval1*getval2;
              });
              print(result);

            },child: Text("MULTIPLY"),color: Colors.lightGreen,splashColor:
            Colors.deepPurple,),
            Text(result.toString()),
            RaisedButton(onPressed: (){

              double getval1=double.parse(getVal1.text);
              double getval2=double.parse(getVal2.text);

              setState(() {
                results=getval1/getval2;
              });

              print(results);

            },child: Text("DIVISION"),color: Colors.pink,splashColor: Colors.deepOrangeAccent,),
            Text(results.toString()),



          ],
        ),
      ),
    );
  }
}
