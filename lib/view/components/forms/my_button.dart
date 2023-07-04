import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String lable;
  final Color buttomColor, lableColor, borderColor;
  final double width, height, borderWidth, fontSize;
  final FontWeight fontWeight;
  final BorderRadius borderRadius;

  const MyButton(
      {super.key,
      this.onTap,
      required this.lable,
      required this.buttomColor,
      required this.width,
      required this.fontWeight,
      required this.lableColor,
      required this.borderRadius,
      required this.height,
      required this.borderColor,
      required this.borderWidth,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RawMaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: BorderSide(color: borderColor, width: borderWidth)),
        fillColor: buttomColor,
        child: Text(
          lable,
          style: GoogleFonts.notoNaskhArabic(
              fontWeight: fontWeight, color: lableColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
