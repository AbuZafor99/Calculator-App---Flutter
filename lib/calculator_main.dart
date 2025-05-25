import 'dart:ffi';

import 'package:calculator_app/widget/buildButton.dart';
import 'package:flutter/material.dart';

class Calculator_app extends StatefulWidget {
  const Calculator_app({super.key});

  @override
  State<Calculator_app> createState() => _Calculator_appState();
}

class _Calculator_appState extends State<Calculator_app> {
  String _output="0";
  String _input="0";
  String _ope="0";
  double num1=0;
  double num2=0;

  void buttonPress(String value){
    print(value);
    setState(() {
      if(value=="C"){
        _output="0";
        _input="0";
        _ope="";
        num1=0;
        num2=0;
      }else if(value=="="){
        num2=double.parse(_input);
        if(_ope=="+"){
          _output=(num1+num2).toString();
        }
        else if(_ope=="-"){
          _output=(num1-num2).toString();
        }
        else if(_ope=="*"){
          _output=(num1*num2).toString();
        }
        else if(_ope=="/"){
          _output=(num2!=0)?(num1/num2).toString(): "Error";
        }
        _input=_output;
      }
      else if(['+','-','*','/'].contains(value)){
        num1=double.parse(_input);
        _ope=value;
        _input='';
      }
      else{
        _input+=value;
        _output=_input;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("My Calculator"),
        backgroundColor: Colors.orange,
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(_output,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          ),
          Row(
            children: [
              buildButton(onClick: ()=>buttonPress("7"),text: "7",),
              buildButton(onClick: ()=>buttonPress("8"),text: "8",),
              buildButton(onClick: ()=>buttonPress("9"),text: "9",),
              buildButton(onClick: ()=>buttonPress("/"),text: "/",color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              buildButton(onClick: ()=>buttonPress("4"),text: "4",),
              buildButton(onClick: ()=>buttonPress("5"),text: "5",),
              buildButton(onClick: ()=>buttonPress("6"),text: "6",),
              buildButton(onClick: ()=>buttonPress("*"),text: "*",color: Colors.orange),
            ],
          ),
          Row(
            children: [
              buildButton(onClick: ()=>buttonPress("1"),text: "1",),
              buildButton(onClick: ()=>buttonPress("2"),text: "2",),
              buildButton(onClick: ()=>buttonPress("3"),text: "3",),
              buildButton(onClick: ()=>buttonPress("-"),text: "-",color: Colors.orange),
            ],
          ),
          Row(
            children: [
              buildButton(onClick: ()=>buttonPress("C"),text: "C",color: Colors.red),
              buildButton(onClick: ()=>buttonPress("0"),text: "0",),
              buildButton(onClick: ()=>buttonPress("="),text: "=",color: Colors.green),
              buildButton(onClick: ()=>buttonPress("+"),text: "+",color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}
