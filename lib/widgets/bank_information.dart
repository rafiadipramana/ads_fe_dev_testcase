import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class BankInformation extends StatelessWidget {
  const BankInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Text(
            'Payment Method',
            style:
                GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(12)),
                    child: Image.asset("assets/images/mandiri.png", width: 40),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'loremipsum@gmail.com',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Email',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: textContentColor),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: SvgPicture.asset("assets/icons/edit.svg", width: 25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
