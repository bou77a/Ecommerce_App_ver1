import 'package:ecomerce_flutter_app/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: KshodowColor,
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$130",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: KmainBlueColor),
          ),
          Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text(
              "Add To Cart",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            icon: Icon(CupertinoIcons.cart_badge_plus),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 13, horizontal: 15)),
                shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
        ],
      ),
    );
  }
}
