import 'package:flutter/material.dart';

import '../constant/style.dart';
import '../widgets/mySpacer.dart';

class placeOrderSucessfully extends StatelessWidget {
  const placeOrderSucessfully({super.key});

  @override
  Widget build(BuildContext context) {
    //var vwidth = MediaQuery.of(context).size.width;
    //var vheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 247, 100, 149),
            ),

            child: Center(
                child: Text(
              'Place Order successfully',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),

            // child: Column(
            //   //crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     //mySpacer(20.0, 0.0, 0),
            //     Center(
            //       child: const Text(
            //         "Place Order successfully",
            //         style: TextStyle(
            //             fontSize: 24,
            //             color: Colors.white,
            //             //fontWeight: FontWeight.bold
            //             ),
            //       ),
            //     ),
            //    // mySpacer(200.0, 0.0, 0),

            //    SizedBox(height: 100,),

            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.black,
            //     )

            //     // SizedBox(height: 100,),

            //     // )
            //     // const Text(
            //     //   "Please enter your credientials",
            //     //   style: TextStyle(
            //     //     color: Colors.white,
            //     //   ),
            //     // ),
            //   ],
            // ),
          ),

          SizedBox(height: 100,),
          Container(
            height: 300,
            width: 350,
            //color: Colors.black,
            child: Image.asset('assets/placedorder.png'),
          )
        ],
      ),
    );
  }
}
