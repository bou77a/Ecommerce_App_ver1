import 'package:ecomerce_flutter_app/Constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/ItemAppBar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  List<Color> ColorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(children: [
        ItemAppBar(),
        Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            "assets/1.png",
            height: 300,
          ),
        ),
        Arc(
          height: 30,
          edge: Edge.TOP,
          arcType: ArcType.CONVEY,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      bottom: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Product Title",
                          style: TextStyle(
                              fontSize: 28,
                              color: KmainBlueColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => Icon(
                            Icons.favorite,
                            color: KmainBlueColor,
                          ),
                          onRatingUpdate: (index) {},
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: KshodowColor,
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ]),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "01",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: KmainBlueColor),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: KshodowColor,
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                      offset: Offset(0, 3),
                                    )
                                  ]),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "This is more detailed description of the product. lorum",
                      style: TextStyle(fontSize: 17, color: KmainBlueColor),
                      textAlign: TextAlign.justify,
                    ),
                  ),

                  /// Size part  ------------------------------------------------------------------------------

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Size :",
                          style: TextStyle(
                              fontSize: 18,
                              color: KmainBlueColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: KshodowColor,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ]),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: KmainBlueColor),
                                ),
                              )
                          ],
                        )
                      ],
                    ),
                  ),

                  /// Colors ------------------------------------------------------------------------------

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Color :",
                          style: TextStyle(
                              fontSize: 18,
                              color: KmainBlueColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            for (int i = 0; i < 5; i++)
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: ColorList[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: KshodowColor,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ]),
                              )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
