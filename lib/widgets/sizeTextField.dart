import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mySpacer.dart';

Widget sizeTextField(title, CTRL, vwidth) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey,
        // width: 1,
      ),
    ),

    child: SizedBox(
      width: vwidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextField(
          controller: CTRL,
          decoration: InputDecoration(
            hintText: title,
            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}
