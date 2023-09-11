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
    return Scaffold(
      body: Column(
        children: [
          UserProfile(),
          Presonalinformation(),
          Personalinformation_TextField(),
        ],
      ),
    );
  }

//  presonal information heading code here

  Widget Presonalinformation() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Card(
              color: Color(0xFFFFFFFF),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: SvgPicture.asset(
                        'asset/images/user.svg',
                        width: 20,
                        height: 20,
                      )),
                  const Expanded(flex: 8, child: Text('Personal Information')),
                  Expanded(
                      flex: 1,
                      child: SvgPicture.asset(
                        'asset/images/upperdropdown.svg',
                        width: 10,
                        height: 10,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
// END

  Widget Personalinformation_TextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: 355,
        height: 355,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 253, 253),
          boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 226, 225, 225),
            blurRadius: 2.0,
          )
        ]),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child:Column(
                  children: [
                 TextPartCoustomwidget( label: 'Full Name',value: 'Amit Kumar',),
                 TextPartCoustomwidget( label: 'DOB',value: '16/04/1990',),
                 TextPartCoustomwidget( label: 'Gender',value: 'Male',),
                 TextPartCoustomwidget( label: 'Mobile',value: '+91 98-99-012-345',),
                 TextPartCoustomwidget( label: 'Email',value: 'Amit.kumar@w3villa.com ',),
                 TextPartCoustomwidget( label: 'System SSH',value: 'Null',),
                 TextPartCoustomwidget( label: 'Github Account',value: 'Null',),


                  ],
                ),
               
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget TextPartCoustomwidget(
    { required String label,required String value,}) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                label,
                style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 14),
              ),
            ),
          ),
          Text(":"),
          Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.only(left: 23),
                child: Text(
                  value,
                  style: TextStyle(fontSize: 14),
                ),
              ))
        ],
      ),
    );
  }

  Widget Edit_Save_Btn()
  {
    
  }
}
