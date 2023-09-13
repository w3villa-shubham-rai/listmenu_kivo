import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menusection/customwidget/usermodel.dart';

class MenuListCardItem extends StatelessWidget {
  final User user;
  final VoidCallback? onTap;

  const MenuListCardItem(
      {required this.user, this.onTap, Key? key, required Null Function()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  user.image,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                user.usermenuname,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
