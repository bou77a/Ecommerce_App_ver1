import 'package:flutter/material.dart';
import '../widgets/HomeAppBar.dart';
import '../Constantes.dart';
import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(children: [
              /// This Container is for the search bar widget
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here ....",
                            hintStyle: TextStyle(color: KmainBlueColor)),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: KmainBlueColor,
                      size: 27,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: KmainBlueColor,
                  ),
                ),
              ),

              ///Categories widget--------------------------------------------------------------------------------------------
              CategoriesWidget(),

              /// Items  part ---------------------------------------------------------------------------------------------------------
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: KmainBlueColor,
                  ),
                ),
              ),

              ///Items Widget  ------------------------------------------------------------------------------------------
              ItemsWidget(),

              ///Curved_navigation_bar-----------------------------------------------------------------------------------
            ]),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            Navigator.pushNamed(context, "cartPage");
          },
          height: 70,
          color: KmainBlueColor,
          backgroundColor: Colors.transparent,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ]),
    );
  }
}
