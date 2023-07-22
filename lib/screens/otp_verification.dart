import 'dart:async';

import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:ads_fe_dev_testcase/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  static const routeName = '/otp-verification';

  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  int _seconds = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_seconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String getFormattedTime() {
    int minutes = _seconds ~/ 60;
    int seconds = _seconds % 60;
    return minutes.toString().padLeft(2, '0') +
        ":" +
        seconds.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: secondary,
          shape: CircleBorder(),
          elevation: 0,
          child: Icon(Icons.chevron_left_rounded),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 100, bottom: 47),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            'OTP Verification',
                            style: GoogleFonts.raleway(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Please Check Your Email To See The\nVerification Code',
                          style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: secondaryTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: OtpTextField(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            fieldWidth: 70,
                            borderRadius: BorderRadius.circular(14),
                            focusedBorderColor: Colors.transparent,
                            textStyle: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w700),
                            filled: true,
                            enabledBorderColor: Colors.transparent,
                            borderWidth: 0,
                            numberOfFields: 4,
                            fillColor: secondary,
                            showFieldAsBox: true,
                            onCodeChanged: (String code) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Future<void>.delayed(
                                      const Duration(seconds: 2), () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        LoginScreen.routeName,
                                        (route) => false);
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14))),
                                child: Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "Reset Password",
                                    style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  ),
                                ))),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Resend code to",
                          style: GoogleFonts.raleway(color: textSecondary),
                        ),
                        Text(
                          getFormattedTime(), // Display formatted time here
                          style: GoogleFonts.raleway(color: textSecondary),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
