import 'package:flutter/material.dart';

import '../constant/style.dart';
import '../screens/auth/widgets/pawwordTextField.dart';
import '../widgets/myButton.dart';
import '../widgets/mySpacer.dart';
import '../widgets/mytextField.dart';

class payPal extends StatefulWidget {
  const payPal({super.key});

  @override
  State<payPal> createState() => _payPalState();
}

class _payPalState extends State<payPal> {
  TextEditingController emailCTRL = TextEditingController();
  TextEditingController passwordCTRL = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: vheight,
          child: Stack(children: [
            Positioned(
              top: -60,
              child: Container(
                width: vwidth,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 250, 119, 163),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mySpacer(50.0, 0.0,0),
                      Center(
                        child: const Text(
                          "PAY THROUGH PAYPAL",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      mySpacer(10.0, 0.0,0),
                      Center(
                        child: const Text(
                          "Please enter your credientials",
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
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mySpacer(150.0, 0.0,0),
                  mytextField(
                      "Email Adress", emailCTRL, vwidth, Icons.alternate_email),
                  mySpacer(15.0, 0.0,0),
                  Column(
                    children: [
                      pawwordTextField(vwidth, passwordCTRL, "Password"),
                      mySpacer(30.0, 0.0,0),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Pay Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(9),

                                //border radius equa
                              ),
                              primary: Color.fromARGB(255, 250, 97, 148))),



                      // myButton(
                      //     width: vwidth,
                      //     function: () {
                      //       Navigator.pop(context);
                      //     },
                      //     name: "Pay Now",
                      //     loading: false,
                      //     color: false),
                    ],
                  ),
                  mySpacer(20.0, 0.0,0),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
