import 'package:ecomerce_flutter_app/Constantes.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: KmainBlueColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Product",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: KmainBlueColor),
              ),
            ),
            Spacer(),
            Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
