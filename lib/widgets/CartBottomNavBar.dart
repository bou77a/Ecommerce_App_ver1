import 'package:ecomerce_flutter_app/Constantes.dart';
import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white, // Optional: Add a background color if needed
      ),
      child: SafeArea(
        top: false, // Prevents padding at the top; only applies to the bottom
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Prevents the `Column` from expanding
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                      color: KmainBlueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "\$250",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: KmainBlueColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 10), // Add spacing between rows
            Container(
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: KmainBlueColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Check Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
