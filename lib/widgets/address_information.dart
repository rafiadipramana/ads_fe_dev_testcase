import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class AddressInformation extends StatelessWidget {
  const AddressInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Text(
            'Address',
            style:
                GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rungkut, Kota Surabaya, Jawa Timur",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textContentColor),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: SvgPicture.asset(
                  "assets/icons/dropdown.svg",
                  width: 25,
                ),
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(right: 40),
            child: Stack(
              children: [
                Image.asset("assets/images/maps.png"),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(34),
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    child: SvgPicture.asset("assets/icons/pin.svg"),
                  ),
                )),
              ],
            )),
      ],
    );
  }
}
