// ignore_for_file: non_constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/style.dart';


Widget myButton(
    {required double width, required Null Function() function, required String name, required bool loading, required bool color}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color ? lightGrey : primaryColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ),
    onPressed: function,
    child: SizedBox(
      width: width - 100,
      height: 50,
      child: Center(
          child: loading
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(
                  name,
                  style: TextStyle(fontSize: 20, color: color ? primaryColor : lightGrey, fontWeight: FontWeight.bold),
                )),
    ),
  );
}
