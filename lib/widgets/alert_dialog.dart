import 'package:ads_fe_dev_testcase/constants/colors.dart';
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
