import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 24, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Category',
            style:
                GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: white,
                          surfaceTintColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 23),
                        child: Text(
                          "All Shoes",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: primaryColor,
                          surfaceTintColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 23),
                        child: Text(
                          "Outdoor",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: white),
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: white,
                          surfaceTintColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 23),
                        child: Text(
                          "Tennis",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: white,
                          surfaceTintColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 11, horizontal: 23),
                        child: Text(
                          "Sport",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: black),
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
