import 'package:flutter/material.dart';

import '../constant/style.dart';


Widget smallButton(titel, fun, color) {
  return Container(
    width: 100,
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color? Colors.grey.withOpacity(0.5):primaryColor,
    ),
    child:InkWell(
      onTap: () {
        fun();
      },
      child: Center(
          child: Text(
            titel,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )),
    ),
  );
}