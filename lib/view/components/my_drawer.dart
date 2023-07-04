import 'package:delivery/model/globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 240,
      child: Container(
        color: secondColor,
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: DrawerHeader(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: const AssetImage('lib/assets/images/chef.png'),
                    width: 73,
                    height: 73,
                    color: primaryColor,
                  ),
                  Text(
                    'K  a  t  t  é',
                    style: GoogleFonts.dosis(
                        fontSize: 33,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Username',
                    style: GoogleFonts.dosis(
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                        fontSize: 17),
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  color: primaryColor,
                  size: 23,
                ),
                title: Text(
                  textAlign: TextAlign.end,
                  'پروفایل',
                  style: GoogleFonts.notoNaskhArabic(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "profileScreen", (route) => false);
                },
              ),
            ),
            Center(
              child: ListTile(
                leading: Icon(
                  Icons.arrow_left,
                  color: primaryColor,
                  size: 23,
                ),
                title: Text(
                  textAlign: TextAlign.end,
                  'سفارشات پیشین',
                  style: GoogleFonts.notoNaskhArabic(
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "ordersScreen", (route) => false);
                },
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Log Out',
                          style: GoogleFonts.dosis(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
