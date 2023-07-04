import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyRatingStarBar extends StatefulWidget {
  final double itemSize;
  const MyRatingStarBar({super.key, required this.itemSize});

  @override
  State<MyRatingStarBar> createState() => _MyRatingStarBarState();
}

class _MyRatingStarBarState extends State<MyRatingStarBar> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: widget.itemSize,
      unratedColor: Colors.grey,
      updateOnDrag: true,
      minRating: 1,
      itemBuilder: (BuildContext context, int index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (value) => setState(() {
        rating = value;
      }),
    );
  }
}
