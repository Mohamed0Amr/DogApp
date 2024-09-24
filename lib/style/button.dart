import 'dart:ffi';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Color colorbk;
  final Color colorfg;
  final double width;
  final double height;
  const MyButton({Key? key,required this.label ,required this.onTap, required this.colorbk, required this.colorfg, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: colorbk
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: colorfg,
          ),
        ),
      ),
    );
  }
}
