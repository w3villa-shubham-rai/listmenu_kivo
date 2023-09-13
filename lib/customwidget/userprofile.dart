import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        width: 2,
        color: Color.fromARGB(255, 243, 243, 243),
      ))),
      child: Row(
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg'),
              ),
              Positioned(
                  bottom: 1,
                  left: 12,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: const Color(0xFFE6AD2E),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.camera,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ))
            ],
          ),
          const Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.only(left: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Text(
                      'Amit Kumar',
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF40518A)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Text(
                      'ID: WT/GD/072022/101',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8B8B8B)),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.0),
                      child: Row(
                        children: [
                          Text(
                            'Project Manager  |',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000)),
                          ),
                          Text(
                            '  Noida',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8B8B8B)),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
