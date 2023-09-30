import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hd_learning_app/UI/SplashScreen/Controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splash = Get.put(SplashController());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 268),
              child: Image.asset(
                "assets/images/Logo HomeDev(NoBackground).png",
                width: 136,
                height: 132,
              ),
            ),
            const SizedBox(
              height: 330,
            ),
            Text(
              "V.0.0.1",
              style: GoogleFonts.nunito(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
