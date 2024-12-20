import 'package:ecomerce_flutter_app/Constantes.dart';
import 'package:ecomerce_flutter_app/widgets/CartAppBar.dart';
import 'package:ecomerce_flutter_app/widgets/CartBottomNavBar.dart';
import 'package:flutter/material.dart';

import '../widgets/CartItemSamples.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0XFFEDECF2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  /// decoration: BoxDecoration(),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: KmainBlueColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Add Coupon Code",
                        style: TextStyle(
                          color: KmainBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: CartBottomNavBar(),
      ),
    );
  }
}
