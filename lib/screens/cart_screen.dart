import 'package:ads_fe_dev_testcase/constants/colors.dart';
import 'package:ads_fe_dev_testcase/screens/checkout_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = "/cart-screen";

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
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.builder(
                        itemCount: cartItems.length,
                        itemBuilder: (context, index) {
                          return SlidableItem(
                            productName: cartItems[index]['productName'],
                            productPrice: cartItems[index]['productPrice'],
                            backgroundColor: cartItems[index]
                                ['backgroundColor'],
                            foregroundColor: cartItems[index]
                                ['foregroundColor'],
                            icon: cartItems[index]['icon'],
                            label: cartItems[index]['label'],
                            leading: cartItems[index]['leading'],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                            Navigator.pushNamed(
                                context, CheckoutScreen.routeName);
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

class SlidableItem extends StatelessWidget {
  final String productName;
  final String productPrice;
  final Color backgroundColor;
  final Color foregroundColor;
  final IconData icon;
  final String label;
  final Widget leading;

  const SlidableItem({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.label,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ObjectKey(key),
      startActionPane: ActionPane(
        extentRatio: 1 / 4,
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            icon: icon,
            label: label,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            icon: icon,
            label: label,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 48,
              color: Color.fromRGBO(0, 0, 0, 0.04),
            )
          ],
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 100,
                height: 100,
                child: leading,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productName,
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(productPrice),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}

List<Map<String, dynamic>> cartItems = [
  {
    'productName': "Nike Club Max",
    'productPrice': "1",
    'backgroundColor': Color(0xFFFE4A49),
    'foregroundColor': Colors.white,
    'icon': Icons.delete,
    'label': 'Delete',
    'leading': Image.asset('assets/images/cart_shoes_1.png'),
  },
  {
    'productName': "Tes1",
    'productPrice': "1",
    'backgroundColor': Color(0xFF21B7CA),
    'foregroundColor': Colors.white,
    'icon': Icons.share,
    'label': 'Share',
    'leading': Image.asset('assets/images/cart_shoes_2.png'),
  },
  {
    'productName': "Tes1",
    'productPrice': "1",
    'backgroundColor': Color(0xFF7BC043),
    'foregroundColor': Colors.white,
    'icon': Icons.archive,
    'label': 'Archive',
    'leading': Image.asset('assets/images/cart_shoes_3.png'),
  },
];
