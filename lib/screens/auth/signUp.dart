import 'package:app_project/screens/auth/signln.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';
import '../../widgets/mytextField.dart';
//import 'signIn.dart';
import 'signupDetail.dart';
import 'widgets/bottomCircler.dart';
import 'widgets/pawwordTextField.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phNoCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController nPasswordCtrl = TextEditingController();
  var userType;

  String dropdownvalue = '+92';

  // List of items in our dropdown menu
  var items = [
    '+92',
    '+94',
    '+95',
    '+91',
  ];
  bool looding = false;

  void register() async {
    setState(() {
      looding = true;
    });
    final String username = nameCtrl.text;
    final String useremail = emailCtrl.text.trim();
    final String PhoneNo = phNoCtrl.text;
    final String userpassword = passwordCtrl.text;

    // final String username = "Lovely Mian";
    // final String  rollNo = "2019-Cs-642";
    // final String useremail = "mudassirmukhtar4@gmail.com";
    // final String PhoneNo = "03454335400";
    // final String userpassword = "qwerty";

    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      if (username != '' &&
          useremail != '' &&
          PhoneNo != '' &&
          userpassword != '') {
        DateTime now = DateTime.now();
        String formattedDate = DateFormat('EEE d MMM').format(now);
        final UserCredential user = await auth.createUserWithEmailAndPassword(
            email: useremail, password: userpassword);
        await firestore.collection("users").doc(user.user!.uid).set({
          "UID": user.user!.uid,
          "username": username,
          "email": useremail,
          "PhoneNo": PhoneNo,
          "password": userpassword,
          "JoinDate": formattedDate,
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => signIn(),
          ),
        );
      } else {
        Fluttertoast.showToast(
        msg: "Please fill all text field",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: e.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }
    setState(() {
      looding = false;
    });
  }

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
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 252, 96, 148),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mySpacer(100.0, 0.0, 0),
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Create your account by completing this process",
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
                      mySpacer(150.0, 0.0, 0),
                      mytextField("Full Name", nameCtrl, vwidth, Icons.person),
                      mySpacer(10.0, 0.0, 0),
                      mytextField("Email Address", emailCtrl, vwidth,
                          Icons.alternate_email),
                      mySpacer(10.0, 0.0, 0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            mySpacer(0.0, 10.0, 0),
                            const Icon(
                              Icons.lock,
                              color: primaryColor,
                            ),
                            DropdownButton(
                              value: dropdownvalue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                            mySpacer(0.0, 10.0, 0),
                            SizedBox(
                              width: vwidth - 200,
                              child: TextField(
                                controller: phNoCtrl,
                                decoration: const InputDecoration(
                                  hintText: "Phone Number",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      mySpacer(10.0, 0.0, 0),
                      pawwordTextField(vwidth, passwordCtrl, "New Password"),
                      mySpacer(10.0, 0.0, 0),
                      pawwordTextField(
                          vwidth, nPasswordCtrl, "Confirm Password"),
                      mySpacer(10.0, 0.0, 0),

                      // Row(
                      //   children:const [
                      //     Text(
                      //       "Account Type",
                      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: primaryColor),
                      //     ),
                      //   ],
                      // ),

                      // Row(children: [
                      //   Radio(
                      //     value: 0,
                      //     groupValue: userType,
                      //     onChanged: (val) {
                      //       setState(() {
                      //         userType = 0;
                      //       });
                      //     },
                      //   ),
                      //   const Text(
                      //     'Needy',
                      //     style: TextStyle(fontSize: 17.0),
                      //   ),
                      //   Radio(
                      //     value: 1,
                      //     groupValue: userType,
                      //     onChanged: (val) {
                      //       setState(() {
                      //         userType = 1;
                      //       });
                      //     },
                      //   ),
                      //   const Text(
                      //     'Donor',
                      //     style: TextStyle(fontSize: 17.0),
                      //   ),
                      // ]),

                      mySpacer(20.0, 0.0, 0),
                      myButton(
                          width: vwidth,
                          function: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => signupDetail()),
                            // );
                            register();
                          },
                          // name: "Continue",
                          name: "Sign up",
                          loading: false,
                          color: false),
                    ],
                  ),
                ),
              ),
              bottomCircler(vwidth, "Already have an account?", "Sign In now",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signIn()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
