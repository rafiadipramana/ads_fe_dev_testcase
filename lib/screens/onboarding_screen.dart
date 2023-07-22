import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenColor,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                child: Text("WELCOME TO\nNIKE",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: white)),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(17),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: black),
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
