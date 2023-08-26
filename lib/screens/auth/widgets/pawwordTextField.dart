import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/style.dart';
import '../../../widgets/mySpacer.dart';


Widget pawwordTextField(vwidth,CTRL, text){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey,
        // width: 1,
      ),
    ),
    child: Row(
      children: [
        mySpacer(0.0, 10.0,0),
        const Icon(
          Icons.lock,
          color: primaryColor,
        ),
        mySpacer(0.0, 10.0,0),
        SizedBox(
          width: vwidth - 100,
          child: TextField(
                                          obscureText: true,
            controller: CTRL,
            decoration:  InputDecoration(
              hintText: text,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}