import 'package:delivery/view/components/forms/my_addtocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFoodPost extends StatelessWidget {
  final String imagePath, foodName, price, desc;
  final TextDirection textDirection;
  final Function()? onTap;
  const MyFoodPost({
    super.key,
    required this.imagePath,
    required this.foodName,
    this.onTap,
    required this.price,
    required this.textDirection,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            textDirection: textDirection,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    foodName,
                    style: GoogleFonts.notoNaskhArabic(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "$price T ",
                    style: GoogleFonts.notoNaskhArabic(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MyAddToCard()
                ],
              ),
              Image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                width: 150,
                height: 150,
              )
            ],
          ),
          Text(
            textDirection: TextDirection.rtl,
            desc,
            style: GoogleFonts.notoNaskhArabic(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          )
        ],
      ),
    );
  }
}
