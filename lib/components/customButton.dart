import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String btnName;
  final VoidCallback ontap;
  final Color color;
  const CustomButtons({required this.btnName,required this.ontap, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: ontap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
