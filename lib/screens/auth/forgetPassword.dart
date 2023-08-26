import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';


class forgetPassword extends StatefulWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  TextEditingController emailCTRL = TextEditingController();


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
                  height: 220,
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
                          "Forget Password",
                          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          """No worries! Just enter your email and
we’ll send you a reset password link""",
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
                      mySpacer(200.0, 0.0,0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            mySpacer(0.0, 10.0,0),
                            const Icon(
                              Icons.lock,
                              color: primaryColor,
                            ),
                            mySpacer(0.0, 10.0,0),
                            SizedBox(
                              width: vwidth - 50,
                              child: TextField(
                                controller: emailCTRL,
                                decoration: const InputDecoration(
                                  hintText: "Enter Your Email",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      mySpacer(20.0, 0.0,0),
                      myButton(width: vwidth, function: () {
                            void resetPassword() async {
      final String useremail = emailCTRL.text.trim();
  FirebaseAuth Auth = FirebaseAuth.instance;

      await Auth.sendPasswordResetEmail(email: useremail).then((value) => {
        Fluttertoast.showToast(
        msg: "Sent email Successfully. Check your email.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    ),
          Navigator.of(context).pop()
    }).catchError((e){
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
      });

    }

                      }, name: "Send", loading: false, color: false),
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
