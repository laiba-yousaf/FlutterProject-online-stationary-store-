import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';
import '../../widgets/mytextField.dart';
import '../Home/homeScreen.dart';
import 'forgetPassword.dart';
import 'loginHome.dart';
import 'signUp.dart';
import 'widgets/bottomCircler.dart';
import 'widgets/pawwordTextField.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController emailCTRL = TextEditingController();
  TextEditingController passwordCTRL = TextEditingController();
  var userrType;
  var looding = false;
  FlutterSecureStorage storage = const FlutterSecureStorage();

  void register() async {
    setState(() {
      looding = true;
    });
    var UserData;
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final String useremail = emailCTRL.text.trim();
    final String userpassword = passwordCTRL.text;
    try {
      if (useremail != '' && userpassword != '') {
        final UserCredential user = await auth.signInWithEmailAndPassword(
            email: useremail, password: userpassword);
        final DocumentSnapshot snapshot =
            await firestore.collection("users").doc(user.user?.uid).get();
        storage.write(key: "UID", value: user.user?.uid);
        final data = snapshot.data();
        setState(() {
          UserData = data;
        });
        print("===========================>$UserData");
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => homeScreen(
                    UserData: UserData,
                  )),
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
      // looding = false;
    });
  }

  @override
  void initState() {
    var userrType = 0;
    // TODO: implement initState
    super.initState();
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
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 252, 89, 143),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mySpacer(100.0, 0.0, 0),
                        const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Please sign in with your creditonals",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        mySpacer(30.0, 0.0, 0),
                        // ToggleSwitch(
                        //   minWidth: vwidth - 200,
                        //   cornerRadius: 20.0,
                        //   activeBgColors: const [
                        //     [Colors.white],
                        //     [Colors.white]
                        //   ],
                        //   activeFgColor: primaryColor,
                        //   inactiveBgColor: Colors.green[200],
                        //   inactiveFgColor: Colors.white,
                        //   initialLabelIndex: 0,
                        //   totalSwitches: 2,
                        //   labels: const ['Needy', 'Donor'],
                        //   radiusStyle: true,
                        //   onToggle: (index) {
                        //     print('switched to: $index');
                        //     userrType = 1;
                        //     // if (userrType == 1) {
                        //     //   setState(() {
                        //     //     userrType = 1;
                        //     //   });
                        //     // } else {
                        //     //   setState(() {
                        //     //     userrType = 0;
                        //     //   });
                        //     // }
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    mySpacer(250.0, 0.0, 0),
                    mytextField("Email Adress", emailCTRL, vwidth,
                        Icons.alternate_email),
                    mySpacer(20.0, 0.0, 0),
                    Column(
                      children: [
                        pawwordTextField(vwidth, passwordCTRL, "Password"),
                        mySpacer(0.0, 0.0, 0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  print("2////////////");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => forgetPassword()),
                                  );
                                },
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                    mySpacer(20.0, 0.0, 0),
                    myButton(
                        width: vwidth,
                        function: () {
                          register();
                        },
                        name: "Sign In",
                        loading: false,
                        color: false),
                  ],
                ),
              ),
              bottomCircler(vwidth, "Don’t have an account? ", "Sign Up now",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signUp()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
