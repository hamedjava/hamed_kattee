import 'package:delivery/model/db/box/box.dart';
import 'package:delivery/model/db/shop_card_entity.dart';
import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_dialog.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/components/forms/posts/my_cardpost.dart';
import 'package:delivery/view/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PaymentFirstScreen extends StatefulWidget {
  const PaymentFirstScreen({super.key});

  @override
  State<PaymentFirstScreen> createState() => _PaymentFirstScreenState();
}

class _PaymentFirstScreenState extends State<PaymentFirstScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  List<ShopCardEntity> shopCardItems = [];
  // Future addData() async {
  //   MyBox.shopCardBox = await Hive.openBox("shopCardBox");
  //   MyBox.shopCardBox.add(ShopCardEntity(
  //       "مرغ گریل شده",
  //       "2",
  //       2,
  //       "lib/assets/images/food2.png",
  //       "سیب زمینی + پنیر چدار + سس مخصوص",
  //       "10000"));

  //   getData();
  // }

  Future getData() async {
    MyBox.shopCardBox = await Hive.openBox("shopCardBox");
    shopCardItems = MyBox.shopCardBox.values.toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              boxShadow: const [BoxShadow(spreadRadius: 0.1, blurRadius: 2)],
              color: primaryColor,
              shape: BoxShape.circle,
              border: Border.all(color: secondColor)),
          child: const Icon(
            Icons.location_pin,
            size: 26,
          ),
        ),
      ),
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        leadingWidth: 40,
        scrolledUnderElevation: 1.5,
        toolbarHeight: 50,
        leading: IconButton(
          icon: const Icon(
            Icons.home_outlined,
            size: 28,
          ),
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil("indexScreen", (route) => false);
          },
        ),
        shadowColor: Colors.grey.shade800,
        iconTheme: IconThemeData(color: Colors.grey.shade900),
        backgroundColor: primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Katté',
            style: GoogleFonts.dosis(
                color: secondColor, fontSize: 32, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyDivider(
                      thickness: 0.2,
                      horizontalPadding: 20,
                      dividerColor: Colors.grey),
                  Container(
                    width: 200,
                    height: 41,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 0.1,
                              color: Colors.grey)
                        ]),
                    child: Center(
                      child: Text(
                        'سبد خرید شما',
                        style: GoogleFonts.notoNaskhArabic(
                            color: secondColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const MyDivider(
                      thickness: 0.2,
                      horizontalPadding: 20,
                      dividerColor: Colors.grey),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 700,
                height: MediaQuery.of(context).size.height - 300,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: shopCardItems.length,
                      itemBuilder: (context, index) {
                        return MyCardPost(
                          productId: shopCardItems[index].producytId,
                          imagePath: shopCardItems[index].productImageUrl,
                          name: shopCardItems[index].producyName,
                          price: shopCardItems[index].productPrice,
                          count: shopCardItems[index].productCount,
                        );
                      },
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog<Dialog>(
                      context: context,
                      builder: (BuildContext context) => const MyDialogThree());
                },
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondColor),
                  child: Center(
                    child: Text(
                      'ادامه خرید',
                      style: GoogleFonts.notoNaskhArabic(
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                          fontSize: 17),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
