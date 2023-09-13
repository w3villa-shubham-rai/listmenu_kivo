import 'package:flutter/material.dart';
import 'package:menusection/customwidget/menulist.dart';
import 'package:menusection/customwidget/menulistcarditem.dart';
import 'package:menusection/customwidget/userprofile.dart';

class Mymenu extends StatefulWidget {
  @override
  State<Mymenu> createState() => _MymenuState();
}

class _MymenuState extends State<Mymenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Container(
            child: const Column(
              children: [
                UserProfile(),
                MenulistItem(),
                // MenuListCardItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
