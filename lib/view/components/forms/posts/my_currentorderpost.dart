import 'package:flutter/material.dart';

class MyCurrentOrderPost extends StatelessWidget {
  final double width, height, imageWidth, imageHeight;
  final String imagePath, price, count, title;
  const MyCurrentOrderPost(
      {super.key,
      required this.width,
      required this.height,
      required this.imageWidth,
      required this.imageHeight,
      required this.imagePath,
      required this.price,
      required this.count,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 1),
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 253, 216, 53),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: imageWidth,
                    height: imageHeight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SafeArea(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          count,
                          textAlign: TextAlign.right,
                          style: const TextStyle(fontSize: 12),
                        ),
                        const Text(
                          ' : تعداد کل',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Row(
                        children: [
                          const Text(
                            'تومان ',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            price,
                            textAlign: TextAlign.right,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const Text(
                            ' : قیمت کل',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
