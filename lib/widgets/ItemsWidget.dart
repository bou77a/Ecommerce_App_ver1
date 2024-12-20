import 'package:ecomerce_flutter_app/Constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.6,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 1; i < 10; i++)
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 10, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: KmainBlueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/$i.png",
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "product Title",
                      style: TextStyle(
                          fontSize: 18,
                          color: KmainBlueColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product Description Text ",
                      style: TextStyle(
                        fontSize: 15,
                        color: KmainBlueColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$55",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: KmainBlueColor,
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: KmainBlueColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
