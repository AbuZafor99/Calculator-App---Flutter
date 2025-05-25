import 'package:calculator_app/widget/buildButton.dart';
import 'package:flutter/material.dart';

class Calculator_app extends StatefulWidget {
  const Calculator_app({super.key});

  @override
  State<Calculator_app> createState() => _Calculator_appState();
}

class _Calculator_appState extends State<Calculator_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("My Calculator"),
        backgroundColor: Colors.yellow,
      ),
      body:Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(24),
            child: Text("678",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
          Row(
            children: [
              buildButton()
            ],
          )
        ],
      ),
    );
  }
}
