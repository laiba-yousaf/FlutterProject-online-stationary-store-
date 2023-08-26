import 'dart:ui';

import 'package:app_project/p_Order/addAddress.dart';
import 'package:app_project/p_Order/paymentMethod.dart';
import 'package:app_project/p_Order/placeOrderSucessfully.dart';
import 'package:flutter/material.dart';
import '../constant/style.dart';
import '../widgets/mySpacer.dart';

class placeOrder extends StatefulWidget {
  final Map data;
  const placeOrder({super.key, required this.data});

  @override
  State<placeOrder> createState() => _placeOrderState();
}

class _placeOrderState extends State<placeOrder> {
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;
// print("+===========>${widget.data}");
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
                  color:Color.fromARGB(255, 240, 120, 160)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mySpacer(50.0, 0.0,0),
                      Center(
                        child: const Text(
                          "Place Order",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: const Text(
                          "Place your order",
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
            
            Positioned(
                top: 120,
                left: 60,
                child: Text(
                  "Your selected item is ",
                  style: TextStyle(
                       
                      fontSize: 24,
                      color: Color.fromARGB(255, 245, 105, 152),
                      fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                        height: 120,
                         width: 150,
                        decoration:BoxDecoration(
                       image:DecorationImage( image: AssetImage("${widget.data['image']}",),
                       fit: BoxFit.fill
                                          
                       ),
                        )
                       //color: Colors.black,
                                           ),
                   ),

                  //  Column(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //    children: [
                  //      Text(widget.data["title"],style: TextStyle(fontSize: 16),),
                  //   //        Text(
                    //   "Rs.abc",
                    //   style: TextStyle(color: Colors.yellow),
                    // ),
                    // ],
                  //),
                  
                 SizedBox(width: 20,),
              
                Text("${widget.data["title"]}",style: TextStyle(fontSize: 16),),
                         
                  
                ],
              ),
            ),

            SizedBox(height:100,),

            Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                    child: ElevatedButton(
                      
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => paymentMethod())));
                        },
                        child: Text(
                          "Payment Method",
                          //style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                                shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              
                              
                              //border radius equal to or more than 50% of width
                            ),
                            primary: Color.fromARGB(255, 252, 115, 160)
                            
                            ),
                    )
                    
                        ),
                       // SizedBox(width: 10,),

                    SizedBox(

                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => addAddress(),
                              ));
                        },
                        child: Text(
                          "Add Adress",

                          //style: TextStyle(color: Colors.white),
                        ),


                        style: ElevatedButton.styleFrom(
                                shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              //border radius equa
                                ),
                                primary: Color.fromARGB(255, 241, 103, 149)
                                ),
                    )
                    )
                  ],
                )),

             SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 480, left: 240),
              
              child: Center(
                child: ElevatedButton(
                
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => placeOrderSucessfully())));
                    },
                    child: Text(
                      "Place Order",
                      style: TextStyle(color: Colors.white),
                    
                    ),
                    style:ElevatedButton.styleFrom(
                                shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                              
                              //border radius equa
                                ),primary: Color.fromARGB(255, 250, 97, 148)
                                )
              
              ),
            ),
            ),
             )
          ]),
        ),
      ),
    );
  }
}
