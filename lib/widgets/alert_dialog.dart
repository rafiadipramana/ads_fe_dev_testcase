import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:ads_fe_dev_testcase/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailSentDialog extends StatelessWidget {
  const EmailSentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      contentPadding: const EdgeInsets.all(30),
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              minRadius: 25,
              backgroundColor: primaryColor,
              child: Image.asset("assets/logos/email-sent.png", width: 24),
            ),
            SizedBox(height: 24),
            Text(
              "Check Your Email",
              style: GoogleFonts.raleway(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "We Have Sent Password Recovery\nCode To Your Email",
              style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textContentColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutSuccessDialog extends StatelessWidget {
  const CheckoutSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      contentPadding: const EdgeInsets.all(40),
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              minRadius: 73,
              child: Image.asset("assets/images/success.png", width: 88),
            ),
            SizedBox(height: 24),
            Text(
              "Your Payment Is\nSuccessfull",
              style: GoogleFonts.raleway(
                  fontSize: 20, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14))),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    "Back To Shopping",
                    style: GoogleFonts.raleway(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
