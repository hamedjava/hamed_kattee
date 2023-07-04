import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_dialog.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/components/forms/posts/my_foodpost.dart';
import 'package:delivery/view/components/my_drawer.dart';
import 'package:delivery/view/provider/index_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          showDialog<Dialog>(
              context: context,
              builder: (BuildContext context) => MyDialog(
                    visible: false,
                  ));
        },
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
      bottomSheet: Container(
        decoration: BoxDecoration(
          border: const Border(top: BorderSide(color: Colors.grey, width: 0.2)),
          color: primaryColor,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Consumer<IndexCardState>(
                builder: (context, heh, child) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: IndexCardState.indexCard.length,
                  itemBuilder: (context, index) {
                    return Chip(
                      label: Text(IndexCardState.indexCard[index]),
                      deleteIcon: const Icon(Icons.delete),
                      onDeleted: () {
                        context
                            .read<IndexCardState>()
                            .removeFromList(IndexCardState.indexCard[index]);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: const MyDrawer(),
      appBar: AppBar(
        leadingWidth: 40,
        scrolledUnderElevation: 1.5,
        toolbarHeight: 50,
        leading: IconButton(
          icon: const Icon(
            Icons.shopping_bag_outlined,
            size: 25,
          ),
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil("paymentScreen", (route) => false);
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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              spacing: 115,
              runSpacing: 100,
              alignment: WrapAlignment.spaceAround,
              children: [
                AnimationLimiter(
                  child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 500),
                        childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget)),
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image(
                            image:
                                const AssetImage('lib/assets/images/salad.png'),
                            color: Colors.grey.shade900,
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Starters',
                                  style: GoogleFonts.dosis(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade900),
                                ),
                                Text(
                                  'پـیش غذا',
                                  style: GoogleFonts.notoNaskhArabic(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 1,
                                    horizontalPadding: 0,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food1.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food2.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.rtl,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food3.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                        ],
                      )),
                ),
                AnimationLimiter(
                  child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 500),
                        childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget)),
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image(
                            image: const AssetImage(
                                'lib/assets/images/dinner.png'),
                            color: Colors.grey.shade900,
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Main Foods',
                                  style: GoogleFonts.dosis(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade900),
                                ),
                                Text(
                                  'غـذای اصلی',
                                  style: GoogleFonts.notoNaskhArabic(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 1,
                                    horizontalPadding: 0,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food1.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food2.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.rtl,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food3.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                        ],
                      )),
                ),
                AnimationLimiter(
                  child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 500),
                        childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget)),
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image(
                            image: const AssetImage(
                                'lib/assets/images/chicken.png'),
                            color: Colors.grey.shade900,
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Stews',
                                  style: GoogleFonts.dosis(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade900),
                                ),
                                Text(
                                  'خـوراک ها',
                                  style: GoogleFonts.notoNaskhArabic(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 1,
                                    horizontalPadding: 0,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food1.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food2.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.rtl,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food3.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                        ],
                      )),
                ),
                AnimationLimiter(
                  child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 500),
                        childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget)),
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image(
                            image: const AssetImage(
                                'lib/assets/images/dinner.png'),
                            color: Colors.grey.shade900,
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Main Foods',
                                  style: GoogleFonts.dosis(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade900),
                                ),
                                Text(
                                  'غـذای اصلی',
                                  style: GoogleFonts.notoNaskhArabic(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 1,
                                    horizontalPadding: 0,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food1.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food2.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.rtl,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food3.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                        ],
                      )),
                ),
                AnimationLimiter(
                  child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 500),
                        childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget)),
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image(
                            image:
                                const AssetImage('lib/assets/images/salad.png'),
                            color: Colors.grey.shade900,
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Starters',
                                  style: GoogleFonts.dosis(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade900),
                                ),
                                Text(
                                  'پـیش غذا',
                                  style: GoogleFonts.notoNaskhArabic(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 1,
                                    horizontalPadding: 0,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food1.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food2.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.rtl,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food3.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                        ],
                      )),
                ),
                AnimationLimiter(
                  child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 500),
                        childAnimationBuilder: (widget) => SlideAnimation(
                            horizontalOffset: 50.0,
                            child: FadeInAnimation(child: widget)),
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image(
                            image:
                                const AssetImage('lib/assets/images/meat.png'),
                            color: Colors.grey.shade900,
                            width: 110,
                            height: 110,
                          ),
                          SizedBox(
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Main Foods',
                                  style: GoogleFonts.dosis(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade900),
                                ),
                                Text(
                                  'غـذای اصلی',
                                  style: GoogleFonts.notoNaskhArabic(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 1,
                                    horizontalPadding: 0,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food1.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food2.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.rtl,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            width: 300,
                            child: Row(
                              children: [
                                MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 50,
                                    dividerColor: Colors.grey),
                              ],
                            ),
                          ),
                          MyFoodPost(
                            foodName: 'مرغ گریـل شده',
                            imagePath: 'lib/assets/images/food3.png',
                            price: '160/000',
                            onTap: () {},
                            textDirection: TextDirection.ltr,
                            desc:
                                'مرغ گریل شده + پنیر چدار + کاهو + سس مخصوص + سیب زمینی سرخ کرده',
                          ),
                          const SizedBox(
                            height: 60,
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
