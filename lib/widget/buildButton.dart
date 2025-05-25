import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buildButton extends StatelessWidget {
  const buildButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(24),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.grey[800]
        ),
        onPressed: (){},
        child: Text("1",
          style: TextStyle(
              fontSize: 25,
              color: Colors.white
          ),)
    );
  }
}