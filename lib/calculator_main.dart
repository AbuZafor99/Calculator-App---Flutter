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
      appBar: AppBar(
        title: const Text("My Calculator"),
        backgroundColor: Colors.yellow,
      ),
      body: const Text("This is body"),
    );
  }
}