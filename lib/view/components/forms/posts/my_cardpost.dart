import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_addtocard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardPost extends StatelessWidget {
  final String imagePath, price, name, productId;
  final int count;
  const MyCardPost({
    super.key,
    required this.imagePath,
    required this.price,
    required this.name,
    required this.count,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(blurRadius: 5, spreadRadius: 0.1, color: Colors.grey)
            ]),
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Image(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                    width: 110,
                    height: 110,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MyAddToCardTwo(
                    count: count,
                    productId: productId,
                  ),
                ],
              ),
            ),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  name,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                icon: const Icon(Icons.delete_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
