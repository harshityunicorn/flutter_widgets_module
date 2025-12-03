import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  const SubHeading(this.text, {super.key});

  final String text; 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
