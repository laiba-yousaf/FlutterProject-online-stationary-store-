// import 'dart:html';

import 'package:app_project/constant/style.dart';
import 'package:app_project/deal.dart';
import 'package:app_project/sales.dart';
import 'package:app_project/screens/Home/homeScreen.dart';
import 'package:app_project/search.dart';
import 'package:app_project/shop.dart';
import 'package:flutter/material.dart';

import 'package:app_project/widgets/mySpacer.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List supply = [
    {
      "img": 'assets/note1.jpeg',
    },
    {
      "img": 'assets/note2.jpeg',
    },
    {
      "img": 'assets/note3.jpeg',
    },
  ];
  List supply1 = [
    {
      "img": 'assets/note4.jpeg',
    },
    {
      "img": 'assets/note5.jpeg',
    },
    {
      "img": 'assets/note6.jpeg',
    },
  ];

  List supplytext = [
    {'text1': 'Paint\nNotes \nRs.915\nRs.1,206-9%'},
    {'text1': 'Artisan\nNotes \nRs.215\nRs.306-9%'},
    {'text1': 'Dollor\nNotes \nRs.1,015\nRs.1,506-9%'},
  ];
  @override
  Widget build(BuildContext context) {
    var vwidth = MediaQuery.of(context).size.width;
    var vheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(children: [
        Positioned(
          top: -60,
          child: Container(
            width: vwidth,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 250, 94, 146),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  mySpacer(70.0, 0.0,0),
                  const Text(
                    "Notes & paper Items",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(children: [
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
                                  supply[index]["img"],
                                  //fit: BoxFit.cover,
                                ),
                              ),
                              //elevation: 200,
                              //shadowColor: Color.fromARGB(255, 196, 194, 194),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(255, 250, 217, 227),
                            ),

                            //Container(child: Text(supply[index]['text']),)
                          ],
                        ),
                      );
                    },
                  )),

              Material(
                child: Container(
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
                        ConstrainedBox(
                          constraints:
                              BoxConstraints.tightFor(height: 20, width: 85),
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
                          ),
                        ),
                      ],
                    );
                  },
                )),
              ),

              //2nd child

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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
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
                child: Container(
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
            ]))
      ])),
    );
  }
}