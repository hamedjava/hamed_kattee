import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/components/forms/my_map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Use this for call dialog on pressed
//()=> showDialog<Dialog>(context:context,builder:(BuildContext context) => MyDialog());

// ignore: must_be_immutable
class MyDialog extends StatefulWidget {
  bool visible = false;

  MyDialog({Key? key, required this.visible}) : super(key: key);

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Visibility(
        visible: widget.visible,
        replacement: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.1)),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MyMap(
                height: 180,
                width: double.infinity,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          ' : آدرس',
                          style: GoogleFonts.notoNaskhArabic(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      textDirection: TextDirection.rtl,
                      'صدرا - پاسارگاد - مجتمع آسمان صدرا - طبقه اول - واحد 8',
                      style: GoogleFonts.notoNaskhArabic(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Text(
                            '3532489526',
                            style: GoogleFonts.dosis(
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.5),
                          ),
                        ),
                        Text(
                          '   : کد پستی',
                          style: GoogleFonts.notoNaskhArabic(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.visible = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      width: 71,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(right: 5, top: 2, bottom: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 17,
                              color: secondColor,
                            ),
                            Text(
                              'تغییر آدرس',
                              style: GoogleFonts.notoNaskhArabic(
                                  color: secondColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      MyDivider(
                          thickness: 0.5,
                          horizontalPadding: 30,
                          dividerColor: Colors.grey),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1.5, color: secondColor)),
                      child: Center(
                        child: Text(
                          'تایید',
                          style: GoogleFonts.notoNaskhArabic(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(12, 26),
                    blurRadius: 50,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.1)),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const MyMap(
                height: 180,
                width: double.infinity,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'لطفا آدرس خود را بر روی نقشه انتخاب کنید',
                style: GoogleFonts.notoNaskhArabic(
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 60,
                  width: 250,
                  child: TextFormField(
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          hintText: '',
                          labelText: 'آدرس را وارد کنید',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          floatingLabelStyle: GoogleFonts.notoNaskhArabic(
                              color: secondColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          labelStyle: GoogleFonts.notoNaskhArabic(
                              color: Colors.grey.shade900,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: secondColor, width: 0.7)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: secondColor, width: 0.7)),
                          fillColor: primaryColor,
                          filled: true)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 40,
                  width: 250,
                  child: TextFormField(
                      textAlign: TextAlign.center,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          hintText: '- - - - - - - - - -',
                          labelText: 'کد پستی',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          floatingLabelStyle: GoogleFonts.notoNaskhArabic(
                              color: secondColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          labelStyle: GoogleFonts.notoNaskhArabic(
                              color: Colors.grey.shade900,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: secondColor, width: 0.7)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  BorderSide(color: secondColor, width: 0.7)),
                          fillColor: primaryColor,
                          filled: true)),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Row(
                children: [
                  MyDivider(
                      thickness: 0.5,
                      horizontalPadding: 30,
                      dividerColor: Colors.grey),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.visible = false;
                  });
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      boxShadow: const [
                        BoxShadow(
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            color: Colors.grey)
                      ],
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 1.5, color: secondColor)),
                  child: Center(
                    child: Text(
                      'ثبت',
                      style: GoogleFonts.notoNaskhArabic(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
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

class MyDialogTwo extends StatelessWidget {
  const MyDialogTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 400,
        height: 500,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyMap(
              height: 180,
              width: double.infinity,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

class MyDialogThree extends StatefulWidget {
  const MyDialogThree({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDialogThree> createState() => _MyDialogThreeState();
}

class _MyDialogThreeState extends State<MyDialogThree> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 400,
        height: 500,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  width: 320,
                  height: 200,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '85/000' " T",
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            const MyDivider(
                                thickness: 0.5,
                                horizontalPadding: 10,
                                dividerColor: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '1x',
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            const MyDivider(
                                thickness: 0.5,
                                horizontalPadding: 10,
                                dividerColor: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'ماهی سالمون',
                                style: GoogleFonts.notoNaskhArabic(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '210/000' " T",
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            const MyDivider(
                                thickness: 0.5,
                                horizontalPadding: 10,
                                dividerColor: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '3x',
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            const MyDivider(
                                thickness: 0.5,
                                horizontalPadding: 10,
                                dividerColor: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'کوبیده',
                                style: GoogleFonts.notoNaskhArabic(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '160/000' " T",
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            const MyDivider(
                                thickness: 0.5,
                                horizontalPadding: 10,
                                dividerColor: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '2x',
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            const MyDivider(
                                thickness: 0.5,
                                horizontalPadding: 10,
                                dividerColor: Colors.grey),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'مرغ گریل شده',
                                style: GoogleFonts.notoNaskhArabic(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '420/000' " T",
                                style: GoogleFonts.dosis(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                '  : جمع کل ',
                                style: GoogleFonts.notoNaskhArabic(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      ' : آدرس',
                      style: GoogleFonts.notoNaskhArabic(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: Text(
                  textDirection: TextDirection.rtl,
                  'صدرا - پاسارگاد - مجتمع آسمان صدرا - طبقه اول - واحد 8',
                  style: GoogleFonts.notoNaskhArabic(
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog<Dialog>(
                            context: context,
                            builder: (BuildContext context) => MyDialog(
                                  visible: true,
                                ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        width: 71,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 5, top: 2, bottom: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 17,
                                color: secondColor,
                              ),
                              Text(
                                'تغییر آدرس',
                                style: GoogleFonts.notoNaskhArabic(
                                    color: secondColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Text(
                            '3532489526',
                            style: GoogleFonts.dosis(
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.5),
                          ),
                        ),
                        Text(
                          '   : کد پستی',
                          style: GoogleFonts.notoNaskhArabic(
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const MyDivider(
                      thickness: 0.5,
                      horizontalPadding: 10,
                      dividerColor: Colors.grey),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 150,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: secondColor),
                      child: Center(
                        child: Text(
                          'پرداخت',
                          style: GoogleFonts.notoNaskhArabic(
                              fontWeight: FontWeight.w600,
                              color: primaryColor,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  const MyDivider(
                      thickness: 0.5,
                      horizontalPadding: 10,
                      dividerColor: Colors.grey),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
