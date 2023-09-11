import 'package:flutter/material.dart';
import 'package:menusection/Myprofilepage.dart';
import 'package:menusection/customwidget/menulistcarditem.dart';

import 'usermodel.dart';

class MenulistItem extends StatefulWidget {
  const MenulistItem({super.key});

  @override
  State<MenulistItem> createState() => _MenulistItemState();
}

class _MenulistItemState extends State<MenulistItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return MenuListCardItem(
            user: users[index],
            onTap: () {
              // print('Item $index tapped');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyprofilePage()),
              );
            },
            Function: () {},
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
