import 'package:delivery/model/db/box/box.dart';
import 'package:delivery/model/db/shop_card_entity.dart';
import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/provider/index_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

class MyAddToCard extends StatefulWidget {
  const MyAddToCard({
    super.key,
  });

  @override
  State<MyAddToCard> createState() => _MyAddToCardState();
}

class _MyAddToCardState extends State<MyAddToCard> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 30,
      child: Visibility(
        visible: count > 0,
        replacement: RawMaterialButton(
          onPressed: () {
            setState(() {
              count++;
            });
            context.read<IndexCardState>().addToList("saeed 2x");
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondColor),
              borderRadius: BorderRadius.circular(50),
              color: secondColor,
            ),
            width: 90,
            height: 25,
            child: Center(
              child: Row(
                children: [
                  MyDivider(
                      thickness: 0.3,
                      horizontalPadding: 0,
                      dividerColor: primaryColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Text(
                      "سفـارش",
                      style: GoogleFonts.notoNaskhArabic(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    ),
                  ),
                  MyDivider(
                      thickness: 0.3,
                      horizontalPadding: 0,
                      dividerColor: primaryColor),
                ],
              ),
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: primaryColor,
          ),
          width: 80,
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: secondColor,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.add,
                    size: 18,
                    color: primaryColor,
                  ),
                ),
              ),
              Text(
                '${count}x',
                style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              InkWell(
                onTap: () {
                  if (count > 0) {
                    setState(() {
                      count--;
                    });
                  }
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: secondColor,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.minimize,
                        size: 18,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyAddToCardTwo extends StatefulWidget {
  MyAddToCardTwo({
    super.key,
    required this.count,
    required this.productId,
  });
  late int count;
  final String productId;

  @override
  State<MyAddToCardTwo> createState() => _MyAddToCardTwoState();
}

class _MyAddToCardTwoState extends State<MyAddToCardTwo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 90,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: primaryColor,
        ),
        width: 80,
        height: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () async {
                MyBox.shopCardBox = await Hive.openBox("shopCardBox");
                ShopCardEntity myItem = MyBox.shopCardBox.values.firstWhere(
                    (element) => element.producytId == widget.productId);
                int index = MyBox.shopCardBox.values.toList().indexOf(myItem);
                int count = myItem.productCount + 1;
                MyBox.shopCardBox.putAt(
                  index,
                  ShopCardEntity(
                      myItem.producyName,
                      myItem.producytId,
                      count,
                      myItem.productImageUrl,
                      myItem.description,
                      myItem.productPrice),
                );
                setState(() {
                  widget.count++;
                });
              },
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: secondColor,
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.add,
                  size: 15,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              '${widget.count}x',
              style: GoogleFonts.dosis(
                  fontWeight: FontWeight.bold, fontSize: 15.5),
            ),
            InkWell(
              onTap: () async {
                if (widget.count > 0) {
                  MyBox.shopCardBox = await Hive.openBox("shopCardBox");
                  ShopCardEntity myItem = MyBox.shopCardBox.values.firstWhere(
                      (element) => element.producytId == widget.productId);
                  int index = MyBox.shopCardBox.values.toList().indexOf(myItem);
                  int count = myItem.productCount - 1;
                  MyBox.shopCardBox.putAt(
                    index,
                    ShopCardEntity(
                        myItem.producyName,
                        myItem.producytId,
                        count,
                        myItem.productImageUrl,
                        myItem.description,
                        myItem.productPrice),
                  );
                  setState(() {
                    widget.count--;
                  });
                }
              },
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: secondColor,
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  children: [
                    Icon(
                      Icons.minimize,
                      size: 15,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
