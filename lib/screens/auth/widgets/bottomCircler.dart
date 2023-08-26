import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/style.dart';


Widget bottomCircler (vwidth, text, btnText,fun){
  return  Stack(
    children: [
      Positioned(
        bottom: -280,
        left: -20,
        child: CircleAvatar(
          backgroundColor: primaryColor.withOpacity(0.1),
          radius: 200,
        ),
      ),
      Positioned(
        bottom: 20,
        child: Container(
          width: vwidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(text),
              TextButton(onPressed: (){fun();}, child:   Text(btnText),)
            ],
          ),
        ),
      ),
    ],
  );
}