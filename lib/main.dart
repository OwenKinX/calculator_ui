import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget{

  buttonPressed(String buttonText){}
  Widget buildButton(String buttonText,double buttonHeight,Color buttonColor){
    return Container(
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
                color: Colors.grey[200],
                width: 1,
                style:  BorderStyle.solid
            )
        ),
        padding: EdgeInsets.fromLTRB(10, 20, 10, 25),
        onPressed: ()=>buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }

  Widget iconButton(String buttonText,double buttonHeight,Color buttonColor){
    return Container(
      color: buttonColor,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 6,
            )
        ),
        padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
        onPressed: ()=>buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget clearButton(String buttonText,double buttonHeight,Color buttonColor){
    return Container(
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
                color: Colors.redAccent,
                width: 4,
                style:  BorderStyle.solid
            )
        ),
        padding: EdgeInsets.fromLTRB(5, 18, 5, 18),
        onPressed: ()=>buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }

  Widget equalButton(String buttonText,double buttonHeight,Color buttonColor){
    return Container(
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
                color: Colors.greenAccent,
                width: 4,
                style:  BorderStyle.solid
            )
        ),
        padding: EdgeInsets.fromLTRB(5, 18, 5, 18),
        onPressed: ()=>buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Colors.greenAccent,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Expanded(
            flex: 3,
            child: Container(
              color:Colors.lightBlueAccent,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 200.0,top: 50.0,),
              child: Text('Error' ,style: TextStyle(fontSize: 65.0, color:Colors.black),),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[500],
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 250.0,),
              child: Text('45+6' ,style: TextStyle(fontSize: 30.0, color:Colors.black, backgroundColor: Colors.pink),),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Table(
                children:[
                  TableRow(
                    children: [
                      buildButton('1',1,Colors.white),
                      buildButton('2',1,Colors.white),
                      buildButton('3',1,Colors.white),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton('4',1,Colors.white),
                      buildButton('5',1,Colors.white),
                      buildButton('6',1,Colors.white),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton('7',1,Colors.white),
                      buildButton('8',1,Colors.white),
                      buildButton('9',1,Colors.white),
                    ],
                  ),
                  TableRow(
                    children: [
                      buildButton('+/-',1,Colors.white),
                      buildButton('0',1,Colors.white),
                      buildButton('.',1,Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded( flex: 1,
            child: Container(
              child: Table(
                children: [
                  TableRow(
                    children: [
                      iconButton('+',1,Colors.pink),
                      iconButton('-',1,Colors.amber),
                      iconButton('x',1,Colors.lightBlueAccent),
                      iconButton('÷',1,Colors.purple),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Table(
                children: [
                  TableRow(
                    children: [
                      clearButton('<<', 2, Colors.white),
                      equalButton('=', 2, Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}