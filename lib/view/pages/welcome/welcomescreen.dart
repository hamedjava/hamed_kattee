import 'package:delivery/model/globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil("loginScreen", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondColor,
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                        width: 135,
                        height: 115,
                        child: Image(
                          image: const AssetImage('lib/assets/images/chef.png'),
                          fit: BoxFit.cover,
                          color: primaryColor,
                        )),
                    Text(
                      'Katté',
                      style: GoogleFonts.dosis(
                          color: primaryColor,
                          fontSize: 55,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                LoadingAnimationWidget.prograssiveDots(
                  color: primaryColor,
                  size: 50,
                ),
                const SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ));
  }
}
