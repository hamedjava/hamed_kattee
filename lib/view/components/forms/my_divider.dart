import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double thickness, horizontalPadding;
  final Color dividerColor;
  const MyDivider(
      {super.key,
      required this.thickness,
      required this.horizontalPadding,
      required this.dividerColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Divider(thickness: thickness, color: dividerColor),
    ));
  }
}
