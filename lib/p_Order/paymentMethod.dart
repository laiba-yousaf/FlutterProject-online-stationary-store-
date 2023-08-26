import 'package:flutter/material.dart';

import '../constant/style.dart';

import '../widgets/myButton.dart';
import '../widgets/mySpacer.dart';
import 'creditCard.dart';
import 'mobileWallet.dart';
import 'payPal.dart';

class paymentMethod extends StatefulWidget {
  const paymentMethod({super.key});

  @override
  State<paymentMethod> createState() => _paymentMethodState();
}

class _paymentMethodState extends State<paymentMethod> {
  var lst = [
    {
      "title": "Credit Card",
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
    },
    {
      "title": "PayPal Card",
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
    },
    {
      "title": "Mobile Wallet",
      "img":
          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    var vheight = MediaQuery.of(context).size.height;
    var vwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
            top: -60,
            child: Container(
              width: vwidth,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 250, 114, 159),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mySpacer(50.0, 0.0,0),
                    Center(
                      child: const Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    mySpacer(10.0, 0.0,0),
                    Center(
                      child: const Text(
                        "Please Select Any account Type",
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
          // mySpacer(200.0, 0.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => creditCard())));
                  }),
                  child: Container(
                      height: 120,
                      width: vwidth,
                      child: Center(
                          child:
                              Image(image: AssetImage("assets/credit.png")))),
                ),
                mySpacer(10.0, 0.0,0),
                Center(child: Text("Credit Card")),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => payPal())));
                  }),
                  child: Container(
                      height: 120,
                       width: 150,
                       //color: Colors.black,
                      child: Center(
                          child: Image(image: AssetImage("assets/pay.png")))),
                ),
                mySpacer(10.0, 0.0,0),
                Center(child: Text("PayPal Card")),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => mobileWallet())));
                  }),
                  child: Container(
                      height: 120,
                      width: vwidth,
                      child: Center(
                          child: Image(image: AssetImage("assets/jazz.jpeg")))),
                ),
                mySpacer(10.0, 0.0,0),
                Center(child: Text("Mobile Wallets")),
              ],
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     mySpacer(140.0, 0.0),
              //     Container(
              //         padding: EdgeInsets.all(12.0),
              //         child: GridView.builder(
              //           shrinkWrap: true,
              //           itemCount: lst.length,
              //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //               crossAxisCount: 1,
              //               crossAxisSpacing: 4.0,
              //               mainAxisSpacing: 4.0),
              //           itemBuilder: (BuildContext context, int index) {
              //             return Column(
              //               children: [
              //                 Container(
              //                   height: 140,
              //                   decoration: BoxDecoration(
              //                     image: DecorationImage(
              //                       image: NetworkImage(lst[index]["img"]!),
              //                       fit: BoxFit.fitHeight,
              //                     ),
              //                     shape: BoxShape.rectangle,
              //                   ),
              //                 ),

              //                 Text(lst[index]["title"]!)

              //                 // Image.network(products[index]["img"]),
              //                 // Text(products[index]["title"]),
              //                 // ElevatedButton(
              //                 //     onPressed: () {
              //                 //       Navigator.push(
              //                 //           context,
              //                 //           MaterialPageRoute(
              //                 //               builder: ((context) => placeOrder(
              //                 //                     data: products[index],
              //                 //                   ))));
              //                 //     },
              //                 //     child: Text("Add to Cart"))
              //               ],
              //             );
              //           },
              //         )),
              //   ],
            ),
          ),

          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     mySpacer(150.0, 0.0),

          // myButton(
          //     width: 2000,
          //     function: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: ((context) => creditCard())));
          //     },
          //     name: "Credit Card",
          //     loading: false,
          //     color: false),
          // mySpacer(30.0, 0.0),
          // myButton(
          //     width: 2000,
          //     function: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: ((context) => payPal())));
          //     },
          //     name: "PAY PAL",
          //     loading: false,
          //     color: false),
          // mySpacer(30.0, 0.0),
          // myButton(
          //     width: 2000,
          //     function: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: ((context) => mobileWallet())));
          //     },
          //     name: "Mobile Wallets",
          //     loading: false,
          //     color: false),
          // ],
          // )
        ]),
      ),
    );
  }
}
