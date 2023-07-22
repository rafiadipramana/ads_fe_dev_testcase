import 'package:ads_fe_dev_testcase/screens/cart_screen.dart';
import 'package:ads_fe_dev_testcase/screens/checkout_screen.dart';
import 'package:ads_fe_dev_testcase/screens/home_screen.dart';
import 'package:ads_fe_dev_testcase/screens/login_screen.dart';
import 'package:ads_fe_dev_testcase/screens/otp_verification.dart';
import 'package:ads_fe_dev_testcase/screens/password_recovery_screen.dart';
import 'package:ads_fe_dev_testcase/screens/register_screen.dart';
import 'package:ads_fe_dev_testcase/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        PasswordRecoveryScreen.routeName: (context) => PasswordRecoveryScreen(),
        OTPVerification.routeName: (context) => OTPVerification(),
        HomeScreen.routeName: (context) => HomeScreen(),
        CartScreen.routeName: (context) => CartScreen(),
        CheckoutScreen.routeName: (context) => CheckoutScreen()
      },
    );
  }
}
