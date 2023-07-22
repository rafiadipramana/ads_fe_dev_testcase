import 'package:ads_fe_dev_testcase/screens/cart_screen.dart';
import 'package:ads_fe_dev_testcase/widgets/category_slider.dart';
import 'package:ads_fe_dev_testcase/widgets/custom_search_bar.dart';
import 'package:ads_fe_dev_testcase/widgets/product_showcase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight +
              20), // Set the preferred size with additional space
          child: Container(
            margin: EdgeInsets.only(top: 20), // Add spacing above the AppBar
            child: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Image.asset("assets/images/title_decor.png"),
                  ),
                  Text(
                    "Explore",
                    style: GoogleFonts.raleway(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              leading: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SvgPicture.asset(
                    'assets/icons/hamburger.svg',
                    width: 26,
                    height: 18,
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: badges.Badge(
                    position: badges.BadgePosition.topEnd(top: 8, end: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, CartScreen.routeName);
                      },
                      child: CircleAvatar(
                        backgroundColor: white,
                        minRadius: 35,
                        child: SvgPicture.asset('assets/icons/cart.svg',
                            width: 24),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 19),
          child: Column(
            children: [CustomSearchBar(), CategorySlider(), ProductShowcase()],
          ),
        ),
      ),
    );
  }
}
