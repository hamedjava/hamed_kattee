import 'package:delivery/model/globals/globals.dart';
import 'package:delivery/view/components/forms/my_divider.dart';
import 'package:delivery/view/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimationLimiter(
                child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(child: widget)),
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                          backgroundColor: primaryColor,
                          child: const Image(
                            image: AssetImage('lib/assets/images/profile.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Text(
                      'Username',
                      style: GoogleFonts.dosis(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      width: 700,
                      child: Row(
                        children: [
                          MyDivider(
                              thickness: 0.5,
                              horizontalPadding: 30,
                              dividerColor: Colors.grey)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 500,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Name : ',
                                    style: GoogleFonts.dosis(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                const MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 20,
                                    dividerColor: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'سعیـد',
                                    style: GoogleFonts.notoNaskhArabic(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Family : ',
                                    style: GoogleFonts.dosis(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                const MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 20,
                                    dividerColor: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'شهـاب',
                                    style: GoogleFonts.notoNaskhArabic(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Phonenumber : ',
                                    style: GoogleFonts.dosis(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                const MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 20,
                                    dividerColor: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    '09338680570',
                                    style: GoogleFonts.dosis(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Email : ',
                                    style: GoogleFonts.dosis(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                const MyDivider(
                                    thickness: 0.2,
                                    horizontalPadding: 20,
                                    dividerColor: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Katteproject@gmail.com',
                                    style: GoogleFonts.notoNaskhArabic(
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border.symmetric(
                              horizontal:
                                  BorderSide(color: Colors.grey, width: 0.6))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 8),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Log Out',
                              style: GoogleFonts.dosis(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
