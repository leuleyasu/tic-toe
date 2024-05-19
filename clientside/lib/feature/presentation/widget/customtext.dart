// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  List<Shadow> shadows;
  String text;
final double fontSize;
   CustomText({
    Key? key,
    required this.shadows,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        shadows: shadows
      ),
    );
  }
}
