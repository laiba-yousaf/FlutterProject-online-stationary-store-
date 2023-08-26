//import 'dart:html';

import 'package:app_project/brand.dart';
import 'package:app_project/deal.dart';
import 'package:app_project/sales.dart';
import 'package:app_project/screens/Home/homeScreen.dart';
import 'package:app_project/screens/auth/loginHome.dart';
import 'package:app_project/search.dart';
import 'package:flutter/material.dart';

import 'package:app_project/widgets/mySpacer.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<shop> {
  List supply = [
    {
      "img": 'assets/sh1.png',
    },
    {
      "img": 'assets/sh2.png',
    },
    {
      "img": 'assets/sh3.png',
    },
  ];

  List supply1 = [
    {
      "img": 'assets/sh4.png',
    },
    {
      "img": 'assets/sh5.png',
    },
    {
      "img": 'assets/sh6.png',
    },
  ];

  List supplytext = [
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 162, 192),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(child: Image.asset('assets/logo.png')),
        ),
        title: Container(
          width: 300,
          height: 30,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 183, 205),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white,
              // width: 1,
            ),
          ),

          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                alignment: Alignment.center,
                padding: new EdgeInsets.all(0.0),
                icon: const Icon(
                  Icons.search,
                  size: 19,
                ),
                onPressed: () =>
                    showSearch(context: context, delegate: Search()),
              ),

              SizedBox(
                width: 15,
              ),
              Center(
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )

                      // Center(
              //     child: Text(
              //   "Search",
              //   style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              //   textAlign: TextAlign.justify,
              // )),
            ],
          ),
          //Text("seaarch bar"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () async {
                FlutterSecureStorage storage = const FlutterSecureStorage();
                await storage.delete(key: "UID");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginHome()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 179, 202),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    // width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const Icon(Icons.person),
                      mySpacer(10.0, 0.0, 0),
                      const Text("Log Out"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              height: 50,
              child: Row(
                children: [
                  //ElevatedButton(onPressed: (){}, child:Text('home')),
                  SizedBox(
                      height: 20,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homeScreen(UserData: {},)),
                          );
                        },
                        child: Center(
                            child: Text(
                          'All Categories',
                          style: TextStyle(fontSize: 10),
                        )),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          //border radius equal to or more than 50% of width
                        )),
                      )),

                  SizedBox(
                    width: 6,
                  ),

                  SizedBox(
                      height: 20,
                      width: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => deal()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Deals',
                          style: TextStyle(fontSize: 10),
                        )),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          //border radius equal to or more than 50% of width
                        )),
                      )),

                  SizedBox(
                    width: 6,
                  ),

                  SizedBox(
                      height: 20,
                      width: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sales()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Sales',
                          style: TextStyle(fontSize: 10),
                        )),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          //border radius equal to or more than 50% of width
                        )),
                      )),

                  SizedBox(
                    width: 6,
                  ),

                  SizedBox(
                      height: 20,
                      width: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => shop()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Shop',
                          style: TextStyle(fontSize: 10),
                        )),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              //border radius equal to or more than 50% of width
                            )),
                      )),

                  SizedBox(
                    width: 6,
                  ),

                  SizedBox(
                      height: 20,
                      width: 65,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => brand()),
                          );
                        },
                        child: Center(
                            child: Text(
                          'Brands',
                          style: TextStyle(fontSize: 10),
                        )),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          //border radius equal to or more than 50% of width
                        )),
                      )),

                  //Text('this is sales page'),
                ],
              )),

              SizedBox(height: 50,),
          Column(children: [
            Container(
                // height: 120,
                // color: Color.fromARGB(255, 207, 112, 112),
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: supply.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 8.0),
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Material(
                            child: SizedBox(
                              child: Image.asset(
                                supply[index]["img"],
                              ),
                            ),
                            //elevation: 200,
                            //shadowColor: Color.fromARGB(255, 196, 194, 194),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            //color: Color.fromARGB(255, 250, 217, 227),
                          ),

                          //Container(child: Text(supply[index]['text']),)
                        ],
                      ),
                    );
                  },
                )),

            //description

            Material(
              //elevation: 50,
              //shadowColor: Color.fromARGB(255, 221, 147, 238),
              child: Container(
                  // height: 100,
                  // color: Color.fromARGB(255, 38, 245, 38),
                  // padding: EdgeInsets.zero,
                  child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: supplytext.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 25.0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        supplytext[index]["text1"],
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: 20,
                          width: 85,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              'Add to cart',
                              style: TextStyle(fontSize: 10),
                            )),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              //border radius equal to or more than 50% of width
                            )),
                          )),
                    ],
                  );
                },
              )),
            ),

            //2nd child
            SizedBox(
              height: 30,
            ),

            Container(
                // height: 120,
                // color: Color.fromARGB(255, 207, 112, 112),
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: supply.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 8.0),
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Material(
                            child: SizedBox(
                              child: Image.asset(
                                supply1[index]["img"],
                              ),
                            ),
                            //elevation: 200,
                            //shadowColor: Color.fromARGB(255, 196, 194, 194),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromARGB(255, 250, 217, 227),
                          ),

                          //Container(child: Text(supply[index]['text']),)
                        ],
                      ),
                    );
                  },
                )),

            //description

            Material(
              //elevation: 50,
              //shadowColor: Color.fromARGB(255, 221, 147, 238),
              child: Container(
                  // height: 100,
                  // color: Color.fromARGB(255, 38, 245, 38),
                  padding: EdgeInsets.zero,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: supplytext.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6.0,
                        mainAxisSpacing: 25.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text(
                            supplytext[index]["text1"],
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                              height: 20,
                              width: 85,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Center(
                                    child: Text(
                                  'Add to cart',
                                  style: TextStyle(fontSize: 10),
                                )),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  //border radius equal to or more than 50% of width
                                )),
                              )),
                        ],
                      );
                    },
                  )),
            ),

            // SizedBox(
            //   height: 30,
            // ),

            // Container(
            //     // height: 120,
            //     // color: Color.fromARGB(255, 207, 112, 112),
            //     padding: EdgeInsets.all(12.0),
            //     child: GridView.builder(
            //       //physics: NeverScrollableScrollPhysics(),
            //       shrinkWrap: true,
            //       itemCount: supply.length,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 4,
            //           crossAxisSpacing: 10.0,
            //           mainAxisSpacing: 8.0),
            //       itemBuilder: (BuildContext context, int index) {
            //         return SingleChildScrollView(
            //           child: Column(
            //             children: [
            //               Material(
            //                 child: SizedBox(
            //                   child: Image.asset(
            //                     supply[index]["img"],
            //                   ),
            //                 ),
            //                 //elevation: 200,
            //                 //shadowColor: Color.fromARGB(255, 196, 194, 194),
            //                 borderRadius: BorderRadius.all(Radius.circular(5)),
            //                 color: Color.fromARGB(255, 250, 217, 227),
            //               ),

            //               //Container(child: Text(supply[index]['text']),)
            //             ],
            //           ),
            //         );
            //       },
            //     )),

            // //description

            // Material(
            //   //elevation: 50,
            //   //shadowColor: Color.fromARGB(255, 221, 147, 238),
            //   child: Container(
            //       // height: 100,
            //       // color: Color.fromARGB(255, 38, 245, 38),
            //       padding: EdgeInsets.zero,
            //       child: GridView.builder(
            //         physics: NeverScrollableScrollPhysics(),
            //         shrinkWrap: true,
            //         itemCount: supplytext.length,
            //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 4,
            //             crossAxisSpacing: 6.0,
            //             mainAxisSpacing: 25.0),
            //         itemBuilder: (BuildContext context, int index) {
            //           return Column(
            //             //mainAxisAlignment: MainAxisAlignment.spaceBetween,

            //             children: [
            //               Text(
            //                 supplytext[index]["text1"],
            //                 style: TextStyle(fontSize: 10),
            //                 textAlign: TextAlign.justify,
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               SizedBox(
            //                   height: 20,
            //                   width: 85,
            //                   child: ElevatedButton(
            //                     onPressed: () {},
            //                     child: Center(
            //                         child: Text(
            //                       'Add to cart',
            //                       style: TextStyle(fontSize: 10),
            //                     )),
            //                     style: ElevatedButton.styleFrom(
            //                         shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(50),
            //                       //border radius equal to or more than 50% of width
            //                     )),
            //                   )),
            //             ],
            //           );
            //         },
            //       )),
            // ),
          ])
        ]),
      ),
    );
  }
}
