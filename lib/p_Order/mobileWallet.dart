import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../constant/style.dart';
import '../widgets/myButton.dart';
import '../widgets/mySpacer.dart';
import '../widgets/mytextField.dart';

class mobileWallet extends StatefulWidget {
  const mobileWallet({super.key});

  @override
  State<mobileWallet> createState() => _mobileWalletState();
}

class _mobileWalletState extends State<mobileWallet> {
  TextEditingController accNo = TextEditingController();
  void initState() {
    var userrType = 0;
    // TODO: implement initState;
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
          child: Stack(children: [
            Positioned(
              top: -60,
              child: Container(
                //width: vwidth,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color:Color.fromARGB(255, 248, 115, 159),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mySpacer(50.0, 0.0,0),
                      const Text(
                        "PAY THROUGH WALLET",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      // mySpacer(10.0, 0.0),
                      const Text(
                        "Please Select Account Type",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      mySpacer(20.0, 0.0,0),
                      Center(
                        child: ToggleSwitch(
                          minWidth: vwidth - 200,
                          cornerRadius: 20.0,
                          activeBgColors: const [
                            [Colors.white],
                            [Colors.white]
                          ],
                          activeFgColor: primaryColor,
                          inactiveBgColor: Color.fromARGB(255, 240, 153, 182),
                          inactiveFgColor: Colors.white,
                          initialLabelIndex: 0,
                          totalSwitches: 2,
                          labels: const ['EasyPaisa', 'JazzCash'],
                          radiusStyle: true,
                          onToggle: (index) {
                            print('switched to: $index');
                            var userrType = 1;
                            if (userrType == 1) {
                              setState(() {
                                userrType = 1;
                              });
                            } else {
                              setState(() {
                                userrType = 0;
                              });
                            }
                          },
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
                  mySpacer(120.0, 0.0,0),
                  // Text("Note:"),
                  new ListTile(
                    // leading: Icon(Icons.fiber_manual_record),
                    title: new Text(
                      'Note: ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 245, 101, 149), fontWeight: FontWeight.bold),
                    ),
                  ),
                  new ListTile(
                    leading: Icon(
                      Icons.fiber_manual_record,
                      color: Color.fromARGB(255, 255, 111, 159),
                      size: 20,
                    ),
                    title: new Text(
                      'Ensure your  account number is Active and has sufficient balance.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  new ListTile(
                    leading: Icon(
                      Icons.fiber_manual_record,
                      color: Color.fromARGB(255, 255, 111, 159),
                      size: 20,
                    ),
                    title: new Text(
                      'Unlock your phone and you will receive a MPIN Input Prompt',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),

                  new ListTile(
                    leading: Icon(
                      Icons.fiber_manual_record,
                      color: Color.fromARGB(255, 255, 111, 159),
                      size: 20,
                    ),
                    title: new Text(
                      'Login to your app and enter your MPIN',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Column(
                    children: [
                      mySpacer(70.0, 0.0,0),
                      mytextField(
                          "Account Number", accNo, vwidth, Icons.account_box),
                      //mySpacer(70.0, 0.0),
                      SizedBox(
                        height: 30,
                      ),

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
                      //     width: 300,

                      //     function: () {
                      //       Navigator.pop(context);
                      //     },
                      //     name: "Pay Now",
                      //     loading: false,
                      //     color: false)
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
