import 'package:flutter/material.dart';
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
     return Container(
      height: 300,
       child: ListView.builder(
        itemBuilder: (context, index) {
          return MenuListCardItem(user: users[index]);
        },
        itemCount: users.length,
         ),
     );
  }
}