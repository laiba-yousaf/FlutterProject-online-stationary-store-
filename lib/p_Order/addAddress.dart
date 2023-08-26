import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';
import '../../widgets/sizeTextField.dart';
//import '../screens/auth/signIn.dart';
import '../screens/auth/widgets/bottomCircler.dart';

class addAddress extends StatefulWidget {
  const addAddress({
    Key? key,
  }) : super(key: key);
  @override
  State<addAddress> createState() => _signupDetailState();
}

class _signupDetailState extends State<addAddress> {
  TextEditingController stateCtrl = TextEditingController();
  TextEditingController cityCtrl = TextEditingController();
  TextEditingController apartmentCtrl = TextEditingController();
  TextEditingController zipCodeCtrl = TextEditingController();
  TextEditingController streetAddressCtrl = TextEditingController();
  TextEditingController streetCtrl = TextEditingController();
  TextEditingController CnicCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;
    var userType;
    return Scaffold(
      body: SizedBox(
        height: vheight,
        child: Stack(
          children: [
            Positioned(
              top: -60,
              child: SingleChildScrollView(
                child: Container(
                  width: vwidth,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 253, 113, 160),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mySpacer(80.0, 0.0,0),
                        Center(
                          child: const Text(
                            "ADD ADDRESS",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: const Text(
                            "Please Enter Your Credentials.",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    mySpacer(160.0, 0.0,0),
                    Row(
                      children: const [
                        Text(
                          "Address",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        sizeTextField(
                          "State",
                          stateCtrl,
                          vwidth / 2.4,
                        ),
                        sizeTextField(
                          "City",
                          cityCtrl,
                          vwidth / 2.4,
                        ),
                      ],
                    ),
                    mySpacer(10.0, 0.0,0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        sizeTextField(
                          "Apartment",
                          apartmentCtrl,
                          vwidth / 2.4,
                        ),
                        sizeTextField(
                          "Zip Code",
                          zipCodeCtrl,
                          vwidth / 2.4,
                        ),
                      ],
                    ),
                    mySpacer(10.0, 0.0,0),
                    Row(
                      children: const [
                        Text(
                          "Address",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    mySpacer(10.0, 0.0,0),
                    sizeTextField(
                      "Street Address",
                      streetCtrl,
                      vwidth - 20,
                    ),
                    mySpacer(10.0, 0.0,0),
                    sizeTextField(
                      "CNIC Number",
                      CnicCtrl,
                      vwidth - 30,
                    ),
                    mySpacer(10.0, 0.0,0),
                    Row(
                      children: const [
                        Text(
                          "Address Label",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    Row(children: [
                      Radio(
                        value: 0,
                        groupValue: userType,
                        onChanged: (val) {
                          setState(() {
                            userType = 0;
                          });
                        },
                      ),
                      const Text(
                        'Office',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Radio(
                        value: 1,
                        groupValue: userType,
                        onChanged: (val) {
                          setState(() {
                            userType = 1;
                          });
                        },
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ]),
                    mySpacer(30.0, 0.0,0),
                    myButton(
                        width: vwidth,
                        function: () {
                          Navigator.pop(context);
                        },
                        name: "Save",
                        loading: false,
                        color: false),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
