import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:ads_fe_dev_testcase/widgets/address_information.dart';
import 'package:ads_fe_dev_testcase/widgets/alert_dialog.dart';
import 'package:ads_fe_dev_testcase/widgets/bank_information.dart';
import 'package:ads_fe_dev_testcase/widgets/contact_information.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  static const routeName = "/checkout-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
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
        width: double.infinity,
        margin: const EdgeInsets.only(top: 75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    'My Cart',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(16)),
                    margin: EdgeInsets.only(top: 46, left: 14),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: ContactInformation()),
                        Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: AddressInformation()),
                        Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: BankInformation())
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Informasi Pembayaran
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: white),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8, top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: textContentColor)),
                        Text('Rp 1.753.950',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: black))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: textContentColor)),
                        Text('Rp 60.200',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: black))
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: DottedLine()),
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: black)),
                        Text('Rp 60.200',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: primaryColor))
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 32, top: 30),
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => CheckoutSuccessDialog());
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14))),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Text(
                              "Checkout",
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: white),
                            ),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
