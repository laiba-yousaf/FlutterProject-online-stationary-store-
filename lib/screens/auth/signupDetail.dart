import 'package:app_project/screens/auth/signln.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/style.dart';
import '../../widgets/myButton.dart';
import '../../widgets/mySpacer.dart';
import '../../widgets/sizeTextField.dart';
//import 'signIn.dart';
import 'widgets/bottomCircler.dart';


class signupDetail extends StatefulWidget {
  const signupDetail({Key? key, }) : super(key: key);
  @override
  State<signupDetail> createState() => _signupDetailState();
}

class _signupDetailState extends State<signupDetail> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: vheight,
          child: Stack(
            children: [
              Positioned(
                top: -60,
                child: Container(
                  width: vwidth,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 248, 92, 144),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mySpacer(100.0, 0.0,0),
                        const Text(
                          "Verify",
                          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Fill this form to verify your account.",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
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
                        children:const [
                           Text(
                            "Address",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: primaryColor),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          sizeTextField("State", stateCtrl, vwidth/2.4,),
                          sizeTextField("City", cityCtrl, vwidth/2.4,),
                        ],
                      ),
                      mySpacer(10.0, 0.0,0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          sizeTextField("Apartment", apartmentCtrl, vwidth/2.4,),
                          sizeTextField("Zip Code", zipCodeCtrl, vwidth/2.4,),
                        ],
                      ),
                      mySpacer(10.0, 0.0,0),

                      Row(
                        children:const [
                          Text(
                            "Address",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: primaryColor),
                          ),
                        ],
                      ),
                      mySpacer(10.0, 0.0,0), sizeTextField("Street Address", streetCtrl, vwidth-20,),
                      mySpacer(10.0, 0.0,0),
                      sizeTextField("CNIC Number", CnicCtrl, vwidth-30,),

                      mySpacer(30.0, 0.0,0),
                      myButton(width: vwidth, function: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signIn()),
                        );
                      }, name: "Sign Up", loading: false, color: false),
                    ],
                  ),
                ),
              ),
              bottomCircler(vwidth, "Already have an account?", "Sign In now", () {}),
            ],
          ),
        ),
      ),
    );
  }
}
