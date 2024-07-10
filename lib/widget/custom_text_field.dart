import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const CustomTextField(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.blue,
            spreadRadius: 2,
            blurRadius: 5,
          )
        ]),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: bgColor,
            filled: true,
            hintText: hintText,
          ),
        ));
  }
}
