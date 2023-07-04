// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      this.controller,
      required this.hintText,
      required this.obscureText,
      required this.borderColor,
      required this.focusBorderColor,
      required this.fillColor,
      required this.hintColor,
      required this.borderRadius,
      required this.fontSize,
      required this.borderSize,
      required this.focusBorderSize,
      required this.width,
      required this.height,
      required this.cursorColor,
      required this.fontWeight,
      required this.hintText2,
      required this.expands});

  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText, hintText2;
  final bool obscureText, expands;
  final Color borderColor, focusBorderColor, fillColor, hintColor, cursorColor;
  final BorderRadius borderRadius;
  final double fontSize, borderSize, focusBorderSize, width, height;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: width,
        height: height,
        child: TextFormField(
            expands: expands,
            maxLines: null,
            minLines: null,
            textAlignVertical: TextAlignVertical.top,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            cursorColor: cursorColor,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hintText2,
                label: Text(hintText, textAlign: TextAlign.right),
                labelStyle: TextStyle(color: hintColor, fontSize: fontSize),
                hintStyle: TextStyle(
                    color: hintColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight),
                enabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide:
                        BorderSide(color: borderColor, width: borderSize)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: focusBorderColor, width: focusBorderSize)),
                fillColor: fillColor,
                filled: true)),
      ),
    );
  }
}
