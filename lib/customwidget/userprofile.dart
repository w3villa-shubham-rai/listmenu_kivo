import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Color.fromARGB(255, 243, 243, 243),
          )
        )
      ),
      child: Row(   
        children: [
          Stack(
            children: [
              Container(
                // color: Colors.red,
                child:ClipRRect(
                borderRadius: BorderRadius.circular(55.0), // Adjust the radius as needed
                child: Image.network(
                  'https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg',
                  height: 96.0,
                  width: 100.0,
                  fit: BoxFit.cover, // Cover-fit the image within the rounded rectangle
                ),
              )
              ),
    
            Padding(
              padding: const EdgeInsets.only(top: 72,left: 14),
              child: Positioned(
               child: Stack(
                 alignment: Alignment.center,
                 children: [
                   Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                       color: Color(0xFFE6AD2E),
                       borderRadius: BorderRadius.circular(15),
                     ),
                   ),
                   SvgPicture.asset('asset/images/camera.svg'),
                 ],
               ),
              ),
            )
    
    
            ],
            
          
          ),
       Expanded(
                flex: 8,
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0), 
                          child: Text(
                            'Amit Kumar',
                            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Color(0xFF40518A)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0), 
                          child: Text(
                            'ID: WT/GD/072022/101',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF8B8B8B)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.0), 
    
                          child: Row(
                             children: [
                              Text(
                              'Project Manager  |',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF000000)),                    
                          ),
                          Text(
                            '  Noida',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF8B8B8B)),                    
                          ),
                             ],
                          )
                          
                        ),
                        
                      ],
                    ),
                  ),
                ),
         )  
    
    
        ],
      ),
    );
  }
}
