import 'package:app_project/p_Order/datePicker.dart';
import 'package:flutter/material.dart';
//import 'package:hello/p_Order/datePicker.dart';
//import 'package:hello/p_Order/placeOrder.dart';

import '../constant/style.dart';

import '../widgets/myButton.dart';
import '../widgets/mySpacer.dart';
import '../widgets/mytextField.dart';
import '../widgets/sizeTextField.dart';

class creditCard extends StatefulWidget {
  const creditCard({super.key});

  @override
  State<creditCard> createState() => _creditCardState();
}

class _creditCardState extends State<creditCard> {
  TextEditingController cardNo = TextEditingController();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController cvv = TextEditingController();

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
                  color: Color.fromARGB(255, 245, 112, 156),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mySpacer(50.0, 0.0,0),
                      Center(
                        child: const Text(
                          "PAY THROUGH CARD",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      mySpacer(10.0, 0.0,0),
                      const Text(
                        "Please enter your credientials",
                        style: TextStyle(
                          color: Colors.white,
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
                  // mySpacer(160.0, 0.0),
                  Column(
                    children: [
                      mySpacer(150.0, 0.0,0),
                      mytextField(
                          "Card Number", cardNo, vwidth, Icons.account_box),
                      mySpacer(10.0, 0.0,0),
                      mytextField(
                          "Name On Card", nameCtrl, vwidth, Icons.person),
                      mySpacer(10.0, 0.0,0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            height: 50,
                            width: vwidth / 2.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: datePicker(),
                          ),
                          sizeTextField(
                            "CVV",
                            cvv,
                            vwidth / 2.4,
                          ),
                        ],
                      ),
                      mySpacer(70.0, 0.0,0),

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
