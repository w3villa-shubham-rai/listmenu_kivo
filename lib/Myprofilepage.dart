import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menusection/customwidget/userprofile.dart';

class MyprofilePage extends StatefulWidget {
  @override
  State<MyprofilePage> createState() => _MyprofilePageState();
}

class _MyprofilePageState extends State<MyprofilePage> {
  List<String> lavel = ['Full Name','DOB','Gender','Mobile','Email','System SSH','Github Account',];
  List<String> value = ['Amit Kumar','16/04/1990','Male','+91 98-99-012-345','Amit.kumar@w3villa.com ','Null','Null',];
  List<String> officialtiltle = ['Full Name','DOB','Gender','Mobile','Email','System SSH','Github Account',];
  List<String> officialvalue = ['Amit Kumar','16/04/1990','Male','+91 98-99-012-345','Amit.kumar@w3villa.com ','Null','Null',];
  bool isExpanded = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserProfile(),
            ExpansionTile(
            initiallyExpanded: isExpanded,
            onExpansionChanged: (expanded) {
              setState(() {
                isExpanded = expanded; // Update the expansion state
              });
            },
            title: SizedBox(
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
                      ),
                    ),
                    const Expanded(
                      flex: 8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Personal Information'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: SvgPicture.asset(
                          'asset/images/upperdropdown.svg',
                          width: 10,
                          height: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            children: [
              Personalinformation_TextField(),
            ],
                    ),
          
          // Personalinformation_TextField(),
          // OffcialinformationHeader(),
          // officialinformation_TextField(),

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
                  const Expanded(
                      flex: 8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Personal Information'),
                      )),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        
                        child: SvgPicture.asset(
                          'asset/images/upperdropdown.svg',
                          width: 10,
                          height: 10,
                        ),
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
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
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
                  child: Column(
                    children: [
                         ListView.builder(
                         shrinkWrap: true,
                         itemCount: lavel.length,
                         itemBuilder: (context, index) {
                         return TextPartCoustomwidget(
                         label: lavel[index],
                         value: value[index],
                      );
                    },
                  ),
                      Edit_Save_Btn(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TextPartCoustomwidget({
    required String label,
    required String value,
  }) {
    return Padding(
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

  Widget Edit_Save_Btn() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          fixedSize: Size(330, 0),
          side: BorderSide(width: 1, color: Color(0xFF2E58E6)),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Edit',
              style: TextStyle(color: Color(0xFF2E58E6)),
            ),
            SizedBox(width: 5),
            SvgPicture.asset(
              'asset/images/editlogo.svg',
              width: 15,
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

//  Official information section  Start here

//   Widget OffcialinformationHeader() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 50,
//             child: Card(
//               color: Color(0xFFFFFFFF),
//               elevation: 1,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(3.0),
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                       flex: 1,
//                       child: SvgPicture.asset(
//                         'asset/images/briefcase.svg',
//                         width: 20,
//                         height: 20,
//                       )),
//                   const Expanded(
//                       flex: 8,
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 10),
//                         child: Text('Official Information'),
//                       )),
//                   Expanded(
//                       flex: 1,
//                       child: InkWell(
//                         onTap: () {
//                           setState(() {
//                             if (showOfficalInforamtion) {
//                               showOfficalInforamtion = false;
//                               showPersonalInforamtion = true;
//                             } else {}
//                             showPersonalInforamtion = false;
//                             showOfficalInforamtion = true;
//                           });
//                         },
//                         child: SvgPicture.asset(
//                           'asset/images/downdrop.svg',
//                           width: 10,
//                           height: 10,
//                         ),
//                       )),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// pass the coustom text
  Widget officialinformation_TextField() {
    return Visibility(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
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
                    child: Column(
                      children: [
                        ListView.builder(
                         shrinkWrap: true,
                         itemCount: lavel.length,
                         itemBuilder: (context, index) {
                         return TextPartOfficial_Info(
                         label: lavel[index],
                         value: value[index],
                      );
                    },
                  ),
                       
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

//  end



 Widget TextPartOfficial_Info({
    required String label,
    required String value,
  }) {
    return Padding(
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
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(":"),
          ),
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
  
}
