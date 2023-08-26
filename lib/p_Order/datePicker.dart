import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class datePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _datePicker();
  }
}

class _datePicker extends State<datePicker> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TextField(
      controller: dateinput, //editing controller of this TextField
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.calendar_today), //icon of text field
          labelText: "Expiration Date" //label text of field
          ),
      readOnly: true, //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime
                .now(), //DateTime.now() - not to allow to choose before today.
            firstDate: DateTime(2020),
            lastDate: DateTime(2030));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          //you can implement different kind of Date Format here according to your requirement

          setState(() {
            dateinput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {
          print("Date is not selected");
        }
      },
    ));
  }
}
