import 'package:delivery/view/pages/home/indexscreen.dart';
import 'package:flutter/material.dart';

class RegisterOtpScreen extends StatefulWidget {
  RegisterOtpScreen({super.key});

  @override
  State<RegisterOtpScreen> createState() => _RegisterOtpScreenState();
}

class _RegisterOtpScreenState extends State<RegisterOtpScreen> {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(
                  'lib/assets/images/salad.png',
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text("Test OTP"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("Test OTP"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 42,
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const IndexScreen()),
                    );
                  },
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
