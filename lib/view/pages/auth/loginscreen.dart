import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/pages/auth/registerotpscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:delivery/controller/authentication/auth_controller.dart'
    as auth_controller;

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 110,
                        height: 110,
                        child: Image(
                          image: const AssetImage('lib/assets/images/chef.png'),
                          color: secondColor,
                        )),
                    Text(
                      'Katté',
                      style: GoogleFonts.dosis(
                          color: secondColor,
                          fontSize: 43,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'جهت ورود شماره خود را وارد کنید',
                  style: GoogleFonts.notoNaskhArabic(
                      color: Colors.grey.shade900,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: TextFormField(
                        textAlign: TextAlign.center,
                        cursorColor: Colors.grey,
                        controller: userNameController,
                        decoration: InputDecoration(
                            hintText: '- - - - - - - - - - -',
                            labelText: 'شماره تلفن',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            floatingLabelStyle: GoogleFonts.notoNaskhArabic(
                                color: secondColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w600),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.center,
                            labelStyle: GoogleFonts.notoNaskhArabic(
                                color: Colors.grey.shade900,
                                fontSize: 19,
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
                  height: 30,
                ),
                Row(
                  children: [
                    MyDivider(
                        thickness: 0.3,
                        horizontalPadding: 20,
                        dividerColor: secondColor),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {
                          auth_controller
                              .login(
                                  context: context,
                                  userName: userNameController.text)
                              .then((value) {
                            if (value.isSuccess!) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RegisterOtpScreen(),
                                ),
                              );
                            } else {
                              print("error");
                            }
                          });
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              boxShadow: const [
                                BoxShadow(
                                    spreadRadius: 0.5,
                                    blurRadius: 5,
                                    color: Colors.grey)
                              ],
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 3, color: secondColor)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: Text(
                                'ورود',
                                style: GoogleFonts.notoKufiArabic(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    MyDivider(
                        thickness: 0.3,
                        horizontalPadding: 20,
                        dividerColor: secondColor),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'اگر حساب ندارید ثبت نام کنید',
                      style: GoogleFonts.notoSansArabic(
                          color: Colors.grey.shade900,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      MyDivider(
                          thickness: 0.3,
                          horizontalPadding: 20,
                          dividerColor: secondColor),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              boxShadow: const [
                                BoxShadow(
                                    spreadRadius: 0.4,
                                    blurRadius: 4,
                                    color: Colors.grey)
                              ],
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1, color: secondColor)),
                          child: Center(
                            child: Text(
                              'ثبت نام',
                              style: GoogleFonts.notoKufiArabic(
                                  color: secondColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 8.8),
                            ),
                          ),
                        ),
                      ),
                      MyDivider(
                          thickness: 0.3,
                          horizontalPadding: 20,
                          dividerColor: secondColor),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
