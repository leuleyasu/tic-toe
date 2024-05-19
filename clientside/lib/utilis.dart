// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.child,
  }) : super(key: key);
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(      
        constraints: const  BoxConstraints(
        maxWidth: 600
      )
      ),
    );
  }
}


const bgColor = Color.fromRGBO(16, 13, 34, 1);