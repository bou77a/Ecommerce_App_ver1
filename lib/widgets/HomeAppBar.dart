import 'package:flutter/material.dart';
import '../Constantes.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: KmainBlueColor,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Beauty shop",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.circle,
              badgeColor: Colors.red,
              padding: EdgeInsets.all(5),
            ),
            badgeContent: Text(
              '3',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
