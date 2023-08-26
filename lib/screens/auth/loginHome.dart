//import 'package:app_project/screens/auth/signIn.dart';
//import 'package:app_project/screens/auth/signln.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:app_project/screens/auth/signIn.dart';
import 'package:app_project/screens/auth/signUp.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';
import 'signln.dart';


class loginHome extends StatelessWidget {
  const loginHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: -120,
            left: -139,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 248, 84, 139),
              radius: 320,
            ),
            // child: Container(
            //   width: 680,
            //   height: 680,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(200),
            //     color:  primaryColor,
            //   ),
            // ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              mySpacer(20.0, 0.0,0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                   Text(
                    "AJ Stationers",
                    style: TextStyle(fontSize: 44, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              mySpacer(10.0, 0.0,0),

              Column(
                children: [
                  myButton(width: vwidth, function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signIn()),
                    );
                  }, name: "Sign In", loading: false, color: false),
                  mySpacer(20.0, 0.0,0),

                  myButton(width: vwidth, function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signUp()),
                    );
                  }, name: "Sign Up", loading: false, color: true),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
