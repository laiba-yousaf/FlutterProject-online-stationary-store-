import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';
import 'widgets/pawwordTextField.dart';


class createPassword extends StatefulWidget {
  const createPassword({Key? key}) : super(key: key);

  @override
  State<createPassword> createState() => _createPasswordState();
}

class _createPasswordState extends State<createPassword> {
  TextEditingController passwordCTRL = TextEditingController();
  TextEditingController newPasswordCTRL = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: vheight,
          child: Stack(
            children: [
              Positioned(
                top: -60,
                // child: CircleAvatar(
                //   backgroundColor: primaryColor,
                //   radius: 320,
                // ),
                child: Container(
                  width: vwidth,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mySpacer(100.0, 0.0,0),
                        const Text(
                          "Create New Password",
                          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          """Your new password must be different
from passwords you used before.""",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mySpacer(190.0, 0.0,0),

                      pawwordTextField(vwidth, passwordCTRL,"New Password"),
                      mySpacer(10.0, 0.0,0),
                      pawwordTextField(vwidth, newPasswordCTRL,"Confirm Password"),
                      mySpacer(40.0, 0.0,0),
                      myButton(width: vwidth, function: () {}, name: "Done", loading: false, color: false),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
