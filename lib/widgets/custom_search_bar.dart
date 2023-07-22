import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.04), // Shadow color
                    offset: Offset(0, 4), // Shadow position
                    blurRadius: 4, // Shadow blur radius
                    spreadRadius: 0, // Shadow spread radius
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 0, top: 10, bottom: 10),
                      child: SvgPicture.asset("assets/icons/search.svg",
                          width: 14.33),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 26),
                  hintText: "Looking for shoes",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: textSecondary,
                  ),
                  filled: true,
                  fillColor: white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 14),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.06), // Shadow color
                    offset: Offset(0, 6), // Shadow position
                    blurRadius: 4, // Shadow blur radius
                    spreadRadius: 0, // Shadow spread radius
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: primaryColor,
                radius: 30,
                child: SvgPicture.asset("assets/icons/sliders.svg"),
              ))
        ],
      ),
    );
  }
}
