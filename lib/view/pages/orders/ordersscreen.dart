import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/components/forms/posts/my_cardpost.dart';
import 'package:delivery/view/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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
      body: Center(
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
                      'سفارشات پیشین',
                      style: GoogleFonts.notoNaskhArabic(
                          color: secondColor,
                          fontSize: 23,
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
              height: MediaQuery.of(context).size.height - 150,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const MyCardPost(
                        productId: '2',
                        imagePath: 'lib/assets/images/food3.png',
                        name: "مرغ گریل شده",
                        price: "160/000",
                        count: 2,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
