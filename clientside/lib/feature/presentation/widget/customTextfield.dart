// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
    TextEditingController controller;
  String hintext;
  
  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintext,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow:  [
           BoxShadow(color: Colors.blue,
            blurRadius: 5, spreadRadius: 2),
           
        ]
      ),
      child:TextField(
        controller: controller ,
decoration: InputDecoration(
  fillColor: Colors.amber,
  filled: true,
  hintText: hintext,


),
        
      )
    );
  }
}
