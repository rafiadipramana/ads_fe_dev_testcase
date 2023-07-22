import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarV2 extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  BottomNavBarV2({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 80,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, 80),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: primaryColor,
              child: SvgPicture.asset(
                "assets/icons/cart.svg",
                color: white,
              ),
              elevation: 0.1,
              onPressed: () {},
              shape:
                  CircleBorder(), // Tambahkan ini untuk membuat FloatingActionButton bundar
            ),
          ),
          Container(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    onTap(0);
                  },
                  splashColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/phone.svg', // Ganti dengan path file SVG untuk ikon "home"
                    width: 24,
                    height: 24,
                    color:
                        currentIndex == 0 ? primaryColor : Colors.grey.shade400,
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap(1);
                  },
                  splashColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/love.svg', // Ganti dengan path file SVG untuk ikon "restaurant_menu"
                    width: 24,
                    height: 24,
                    color:
                        currentIndex == 1 ? primaryColor : Colors.grey.shade400,
                  ),
                ),
                Container(
                  width: size.width * 0.20,
                ),
                InkWell(
                  onTap: () {
                    onTap(2);
                  },
                  splashColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/bell.svg', // Ganti dengan path file SVG untuk ikon "bookmark"
                    width: 24,
                    height: 24,
                    color:
                        currentIndex == 2 ? primaryColor : Colors.grey.shade400,
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap(3);
                  },
                  splashColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/icons/user.svg', // Ganti dengan path file SVG untuk ikon "notifications"
                    width: 24,
                    height: 24,
                    color:
                        currentIndex == 3 ? primaryColor : Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(
      Offset(size.width * 0.60, 20),
      radius: Radius.circular(20.0),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
