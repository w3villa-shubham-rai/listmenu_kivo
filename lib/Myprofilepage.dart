import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menusection/customwidget/userprofile.dart';

class MyprofilePage extends StatefulWidget {
  @override
  State<MyprofilePage> createState() => _MyprofilePageState();
}

class _MyprofilePageState extends State<MyprofilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UserProfile(),
          Presonalinformation()
        ],
      ),
    );
  }



  Widget Presonalinformation() {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Row(
              children: [
               Expanded(
                flex: 1,
                child: SvgPicture.asset('asset/images/user.svg',width: 20,height: 20,)),
               const Expanded(
                flex: 8,
                child: Text('Personal Information')),        
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset('asset/images/user.svg',width: 20,height: 20,)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


