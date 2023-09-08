import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menusection/customwidget/usermodel.dart';

class MenuListCardItem extends StatelessWidget {
  final User user;

  const MenuListCardItem({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 70,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2,
              color: Color.fromARGB(238, 224, 224, 224),
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  user.image, 
                  width: 32,
                  height: 32,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Text(
                user.usermenuname,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
