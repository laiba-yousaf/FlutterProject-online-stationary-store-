import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/style.dart';
import 'mySpacer.dart';

Widget mytextField(title,CTRL ,vwidth, icon){
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
        mySpacer(0.0,10.0,0),
        Icon(
          icon,
          color: primaryColor,
        ),
        mySpacer(0.0, 10.0,0),
        SizedBox(
          width: vwidth - 100,
          child: TextField(
            controller: CTRL,
            decoration:  InputDecoration(
              hintText: title,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    ),
  );
}