import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:ads_fe_dev_testcase/constants/style.dart';
import 'package:ads_fe_dev_testcase/screens/home_screen.dart';
import 'package:ads_fe_dev_testcase/screens/password_recovery_screen.dart';
import 'package:ads_fe_dev_testcase/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/login-screen';

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
                    margin: EdgeInsets.only(bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            'Hello Again!',
                            style: GoogleFonts.raleway(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Fill Your Details Or Continue With\nSocial Media',
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
                    margin: EdgeInsets.only(bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Text(
                            "Email Address",
                            style: inputLabel,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 14),
                              hintText: "loremipsum@gmail.com",
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: hintTextColor),
                              filled: true,
                              fillColor: secondary,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Text(
                            "Password",
                            style: inputLabel,
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility_off_outlined,
                                  color: hintTextColor,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 14),
                              hintText:
                                  "\u25CF\u202F\u25CF\u202F\u25CF\u202F\u25CF\u202F\u25CF\u202F\u25CF\u202F\u25CF\u202F\u25CF\u202F\u25CF",
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: hintTextColor),
                              filled: true,
                              fillColor: secondary,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12, bottom: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, PasswordRecoveryScreen.routeName);
                          },
                          child: Text(
                            "Recovery Password",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: hintTextColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 24),
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, HomeScreen.routeName);
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
                                    "Sign In",
                                    style: GoogleFonts.raleway(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  ),
                                ))),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: secondary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14))),
                                child: Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/logos/google.png',
                                        width: 22,
                                      ),
                                      SizedBox(width: 14),
                                      Text(
                                        "Sign In With Google",
                                        style: GoogleFonts.raleway(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: black),
                                      ),
                                    ],
                                  ),
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New User?",
                    style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textSecondary),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, RegisterScreen.routeName);
                      },
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
