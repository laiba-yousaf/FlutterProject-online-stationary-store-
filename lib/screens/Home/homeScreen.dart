//import 'dart:ffi';

// import 'dart:ffi';
// import 'dart:ui';

//import 'dart:html';
import 'dart:ui';

import 'package:app_project/Brushes.dart';
import 'package:app_project/Calculator.dart';
import 'package:app_project/Notes.dart';
import 'package:app_project/Pencils.dart';
import 'package:app_project/Pointers.dart';
import 'package:app_project/Sharpener.dart';
import 'package:app_project/brand.dart';
import 'package:app_project/constant/style.dart';
import 'package:app_project/gum.dart';
import 'package:app_project/sales.dart';
import 'package:app_project/search.dart';
import 'package:app_project/shop.dart';
import 'package:app_project/widgets/mytextField.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

//import 'package:flutter/src/widgets/framework.dart';
import 'package:app_project/screens/auth/loginHome.dart';

//import 'package:app_project/widgets/myAppbar.dart';
import 'package:app_project/widgets/mySpacer.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//import 'package:carousel_pro/carousel_pro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:app_project/deal.dart';

import '../../BallPoint.dart';
import '../../childcorner.dart';
import '../../officecorner.dart';
import '../../p_Order/placeOrder.dart';
//import 'dart:ffi';

class homeScreen extends StatelessWidget {
  final Map UserData;
  const homeScreen({super.key, required this.UserData});

  @override
  Widget build(BuildContext context) {
    return home1();
  }
}

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  int activeIndex = 0;
  var list = [
    "All Categories",
    "Deals",
    "Sale",
    "Shop",
    "Brands",
  ];
  List pages = [
    gum(),
    BallPoint(),
    Calculator(),
    Pencils(),
    Brushes(),
    Pointers(),
    Notes(),
    Sharpener()
  ];

  List products = [
    {
      // "title": "title1 tyuiosasx tyuiownjzksnjassdsa",
      "img": "assets/glue.png",
    },
    {
      //"title": "title1",
      "img": "assets/pen image.png",
    },
    {
      //"title": "title1",
      "img": "assets/calculator.png",
    },
    {
      //"title": "title1",
      "img": "assets/brushes.png",
    },
    {
      //"title": "title1",
      "img": "assets/art.png",
    },
    {
      //"title": "title1",
      "img": "assets/pen.png",
    },
    {
      //"title": "title1",
      "img": "assets/page.png",
    },
    {
      //"title": "title1",
      "img": "assets/shopner.png",
    },
  ];
  List products1 = [
    {"title": "title1", "img": 'assets/br1.png'},
    {"title": "title1", "img": 'assets/br2.png'},
  ];

  var imagelist = [
    'assets/slider.png',
    'assets/image2.jpg',
    'assets/bookslider.png',

    //  'https://www.shutterstock.com/image-photo/back-school-concept-colorful-stationary-260nw-1076332547.jpg',
    //  'https://www.shutterstock.com/image-photo/back-school-concept-colorful-stationary-260nw-1076332547.jpg'
  ];

  List newimages = [
    {
      "img": 'assets/new1.png',
    },
    {
      "img": 'assets/new2.png',
    },
    {
      "img": 'assets/new3.png',
    },
    {
      "img": 'assets/new4.png',
    },
    {
      "img": 'assets/new1.png',
    },
    {
      "img": 'assets/new2.png',
    },
    {
      "img": 'assets/new3.png',
    },
    {
      "img": 'assets/new4.png',
    }
  ];

  List supply = [
    {
      "img": 'assets/sup1.png',
    },
    {
      "img": 'assets/sup2.png',
    },
    {
      "img": 'assets/sup3.png',
    },
    {
      "img": 'assets/sup4.png',
    }
  ];

  List supplytext = [
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
    {'text1': 'Artisan-Paint\nBrushes ArtColor\nRs.2,915\nRs.3,206-9%'},
  ];

  List artb = [
    {
      "img": 'assets/arb1.png',
    },
    {
      "img": 'assets/arb2.png',
    },
    {
      "img": 'assets/arb3.png',
    },
    {
      "img": 'assets/arb4.png',
    }
  ];

  List ch1 = [
    {
      "img": 'assets/c1.png',
    },
    {
      "img": 'assets/c2.png',
    },
  ];

  List ch1text = [
    {
      'text1': 'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%'
    },
    //{'text1':'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%'},
  ];

  List ch2 = [
    {
      "img": 'assets/c3.png',
    },
    {
      "img": 'assets/c4.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    //top header

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 147, 180),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Image.asset('assets/logo.png'),
          ),
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

              // Center(child: Padding(
              //   padding: const EdgeInsets.all(2.0),
              //   child: Text('Search'),
              // ))
              //mySpacer(10.0, 0.0),

              // SizedBox(
              //   width: 120,
              //   child: Text('Search',textAlign: TextAlign.center),

              // ),
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

      //----------------------------------------

//menu bar

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
                                builder: (context) => homeScreen(
                                      UserData: {},
                                    )),
                          );
                        },
                        child: Center(
                            child: Text(
                          'All Categories',
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
                ],
              )),

          // child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: list.length,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             color: Colors.pink[50],
          //             borderRadius: BorderRadius.circular(10),
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Text(list[index]),

          //           ),
          //         ),
          //       );
          //     }),

          SizedBox(
            height: 20,
          ),

          //slider

          Container(
            child: Column(
              children: [
                CarouselSlider.builder(
                  options: CarouselOptions(
                      height: 100,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      viewportFraction: 1,
                      onPageChanged: (index, reason) => setState(
                            (() => activeIndex = index),
                          )),
                  itemCount: imagelist.length,
                  itemBuilder: (context, index, realIndex) {
                    //final imagelist = imagelist[index];
                    return buildImage(imagelist[index], index);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                buildIndicator(),
              ],
            ),
          ),

          //SizedBox(height: 100,),
          // , Container
          //  (
          //   child: Center(child:
          //  ListView
          //  (
          //   children:
          //   [
          //     SizedBox(height: 100,width: double.infinity,
          //     child:Carousel(images: [Image.asset('asset/image2.jpg',fit:BoxFit.cover)]))
          //   ],
          // )
          // ),
          // )
          // CarouselSlider(
          //   options: CarouselOptions(height: 200.0),
          //   items: ['https://www.shutterstock.com/image-photo/back-school-concept-colorful-stationary-260nw-1076332547.jpg',3,4,5].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //             width: MediaQuery.of(context).size.width,
          //             margin: EdgeInsets.symmetric(horizontal: 5.0),
          //             decoration: BoxDecoration(
          //                 color: Color.fromARGB(255, 235, 93, 140)),
          //             child: Image.network(
          //               'text $i',
          //               //style: TextStyle(fontSize: 16.0),
          //             ));
          //       },
          //     );
          //   }).toList(),
          // ),
          SizedBox(
            height: 25,
          ),

          //-----------------------------------------

          //top collection

          Text("TOP COLLECTIONS",
              style: TextStyle(
                  color: Color.fromARGB(255, 248, 109, 155),
                  fontWeight: FontWeight.bold)),

          SizedBox(
            height: 25,
          ),

          Material(
            //elevation: 50,
            //shadowColor: Color.fromARGB(255, 221, 147, 238),
            child: Container(
                //color: Color.fromARGB(255, 236, 233, 233),
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 25.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Material(
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(products[index]["img"]),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pages[index]),
                              );
                            },
                          ),
                          //elevation: 200,
                          //shadowColor: Color.fromARGB(255, 196, 194, 194),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color.fromARGB(255, 250, 217, 227),
                        ),
                      ],
                    );
                  },
                )),
          ),

          // -------------------------------------------

          //top arrival

          Center(
            child: Text("NEW ARRIVAL",
                style: TextStyle(
                    color: Color.fromARGB(255, 248, 109, 155),
                    fontWeight: FontWeight.bold)),
          ),

          SizedBox(
            height: 20,
          ),

          Material(
            child: Container(
              //color: Color.fromARGB(255, 236, 233, 233),
              //padding: EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                      height: 105,
                      child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 50,
                            width: 105,
                            //color: Colors.pink,

                            margin: EdgeInsets.all(10),

                            child: Image.asset(newimages[index]["img"]),
                          );
                          SizedBox(
                            width: 10,
                          );
                        },
                      )),
                ]),
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            //color: Color.fromARGB(255, 250, 217, 227),
          ),

          // -------------------------------------------
          //Quatted

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 15,
              width: 400,
              color: Color.fromARGB(255, 248, 134, 172),
              child: Center(
                child: Text("Quoted of the Day",
                    style: TextStyle(
                        color: Color.fromARGB(255, 250, 26, 101),
                        fontWeight: FontWeight.bold,
                        fontSize: 12)),
              ),
            ),
          ),

          SizedBox(
            height: 5,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 247, 202, 217),
                color: Color.fromARGB(255, 255, 182, 207),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                    "While drawing I discover what I really want to say.Dario Fo",
                    style: TextStyle(
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.bold,
                        fontSize: 12)),
              ),
            ),
          ),

          //-----------------------------------------

          //Branded pens

          SizedBox(
            height: 20,
          ),

          Center(
            child: Text("BRANDED PENS",
                style: TextStyle(
                    color: Color.fromARGB(255, 248, 109, 155),
                    fontWeight: FontWeight.bold)),
          ),

          SizedBox(
            height: 20,
          ),

          Container(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,

                    child: Image.asset('assets/br1.png'),
                    //color: Colors.red,
                  ),
                ),

                //SizedBox(width:2,),

                Container(
                  child: Column(
                    children: [
                      Text(
                        'DUPO PEN\n3 pieces pens\nRs 600\nRs.3,206-9%',
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          height: 20,
                          width: 85,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => placeOrder(data: {
                                            'image': 'assets/br1.png',
                                            "title":
                                                'DUPO PEN\n3 pieces pens\nRs 600\nRs.3,206-9%',
                                          }))));
                            },
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
                  ),
                ),

                //2nd child //-------------------------------------

                SizedBox(
                  width: 10,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,

                    child: Image.asset('assets/br2.png'),
                    //color: Colors.red,
                  ),
                ),

                SizedBox(height: 5),

                Container(
                  child: Column(
                    children: [
                      Text(
                        'DUPO PEN\n3 pieces pens\nRs 600\nRs.3,206-9%',
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.left,
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
                  ),
                ),
              ],
            ),
          )),

          // ART SUPPLIES

          SizedBox(
            height: 20,
          ),

          Text("ART SUPPLIES",
              style: TextStyle(
                  color: Color.fromARGB(255, 248, 109, 155),
                  fontWeight: FontWeight.bold)),

          SizedBox(
            height: 25,
          ),
          Container(
              //color: Color.fromARGB(255, 236, 233, 233),
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: supply.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
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
                //color: Color.fromARGB(255, 236, 233, 233),
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: supplytext.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
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

          //art brand

          SizedBox(
            height: 20,
          ),

          Text("ART BRANDS",
              style: TextStyle(
                  color: Color.fromARGB(255, 248, 109, 155),
                  fontWeight: FontWeight.bold)),

          SizedBox(
            height: 10,
          ),

          Container(
              //color: Color.fromARGB(255, 236, 233, 233),
              height: 50,
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: artb.length,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Material(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: Image.asset(
                              artb[index]["img"],
                              height: 20.33,
                              width: 65.37,
                            ),
                          ),
                        ),

                        //elevation: 200,
                        //shadowColor: Color.fromARGB(255, 196, 194, 194),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromARGB(255, 250, 217, 227),
                      ),
                    ],
                  );
                },
              )),

          //childern corner

          SizedBox(
            height: 20,
          ),

          Container(
            height: 50,
            child: Text("CHILDREN CORNER",
                style: TextStyle(
                    color: Color.fromARGB(255, 248, 109, 155),
                    fontWeight: FontWeight.bold)),
          ),
          //SizedBox(height:20,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Colors.red,
                  child: Image.asset('assets/c1.png'),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Color.fromARGB(255, 171, 244, 54),
                  child: Image.asset('assets/c2.png'),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                ]),
              ),
              SizedBox(
                width: 90,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:20.0),
              //   child: Text('Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',textAlign: TextAlign.justify ,style:TextStyle(fontSize: 10),),

              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: 20,
                      width: 85,
                      child: Center(
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
                      )),
                ]),
              )
            ],
          ),

          //----------------------------------------------

          SizedBox(
            height: 10,
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Colors.red,
                  child: Image.asset('assets/c3.png'),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Color.fromARGB(255, 171, 244, 54),
                  child: Image.asset('assets/c4.png'),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                ]),
              ),
              SizedBox(
                width: 90,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:20.0),
              //   child: Text('Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',textAlign: TextAlign.justify ,style:TextStyle(fontSize: 10),),

              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: 20,
                      width: 85,
                      child: Center(
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
                      )),
                ]),
              )
            ],
          ),
          SizedBox(height: 7),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => childcorner()),
                );
              },
              child: Center(child: Text("see more...."))),

          //-----------------------------------------

          SizedBox(height: 30),

          Container(
            height: 50,
            child: Text("OFFICE CORNER",
                style: TextStyle(
                    color: Color.fromARGB(255, 248, 109, 155),
                    fontWeight: FontWeight.bold)),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Colors.red,
                  child: Image.asset('assets/O1.png'),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Color.fromARGB(255, 171, 244, 54),
                  child: Image.asset('assets/O2.png'),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                ]),
              ),
              SizedBox(
                width: 90,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:20.0),
              //   child: Text('Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',textAlign: TextAlign.justify ,style:TextStyle(fontSize: 10),),

              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: 20,
                      width: 85,
                      child: Center(
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
                      )),
                ]),
              )
            ],
          ),

          //----------------------------------------------

          SizedBox(
            height: 10,
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Colors.red,
                  child: Image.asset('assets/O3.png'),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 120,
                  width: 155,
                  //color: Color.fromARGB(255, 171, 244, 54),
                  child: Image.asset('assets/O4.png'),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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

                  // SizedBox(height: 5),
                  // TextButton(onPressed: () {}, child: Text("see more...."))
                ]),
              ),
              SizedBox(
                width: 90,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:20.0),
              //   child: Text('Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',textAlign: TextAlign.justify ,style:TextStyle(fontSize: 10),),

              Container(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Cartoon Pencil Case\nStorage Pencil Bags\nRs.2,915\nRs.3,206-9%',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      height: 20,
                      width: 85,
                      child: Center(
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
                      )),
                ]),
              )
            ],
          ),

          SizedBox(height: 5),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => officecorner()),
                );
              },
              child: Center(child: Text("see more....")))
        ]),
      ),
    );
  }

  Widget buildImage(var imagelist, int index) => Container(
        width: 350,
        //margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: new BoxDecoration(
            color: Colors.grey,
            image: new DecorationImage(
              image: new AssetImage(imagelist),
              fit: BoxFit.cover,
            )),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagelist.length,
        effect: SlideEffect(
            dotHeight: 12,
            dotWidth: 12,
            activeDotColor: Color.fromARGB(255, 252, 187, 209),
            dotColor: Color.fromARGB(255, 110, 106, 106)),
      );

//AnimatedSmoothIndicator(int i, {required int count}) {}
}
