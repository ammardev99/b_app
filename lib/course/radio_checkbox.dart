// ignore_for_file: avoid_print

import 'package:b_app/widgets/formatting.dart';
import 'package:flutter/material.dart';

class Class11 extends StatefulWidget {
  const Class11({super.key});

  @override
  State<Class11> createState() => _Class11State();
}

class _Class11State extends State<Class11> {
  TextEditingController nameCtr = TextEditingController();

  String mColor = 'pink';
  String gender = 'm';
String selectedGender = 'male';
DateTime? selectedDate;
bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Divider(),

          TextFormField(
            controller: nameCtr,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
          ),
          // submit
          gapBox(20, 10),
          Divider(color: Colors.red, height: 10, thickness: 10),

          gapBox(20, 10),


          gapBox(20, 10),
          CheckboxListTile(
            value: isAgree,
            title: Text("Do you agree with terms and conditions?"), 
            activeColor: Colors.red,
            controlAffinity: ListTileControlAffinity.leading,
            selected: isAgree,
            onChanged:   (value) {
            isAgree = value!;
            setState(() {});
          },),
          gapBox(20, 10),

          Row(
            children: [
              Checkbox(value: isAgree, 
              onChanged:   (value) {
                isAgree = value!;
                setState(() {});
              }),

              Text("Do you agree with terms and conditions?")
            ],
          ),


          gapBox(20, 10),

          Text('Select your Gender'),
          DropdownButton(
            value: selectedGender,

            items: ['male', 'Female', 'Other'].map((e) => DropdownMenuItem(value: e, 
            child: Text(e))).toList(),
          hint: Text("451"),
          onChanged: (value) {
            setState(() {
              selectedGender = value.toString();
            });} 
           ),


          gapBox(20, 10),

          RadioListTile(
            value: 'red',
            groupValue: mColor,
            activeColor: Colors.red,
            title: Text('red Color'),
            selected: mColor == 'red' ? true : false,
            onChanged: (value) {
              setState(() {
                mColor = value.toString();
              });
            },
          ),

          gapBox(20, 10),

          RadioListTile(
            value: 'blue',
            groupValue: mColor,
            activeColor: Colors.blue,
            title: Text('Blue Color'),
            selected: mColor == 'blue' ? true : false,
            onChanged: (value) {
              mColor = value.toString();
              setState(() {});
            },
          ),

          gapBox(20, 10),

          RadioListTile(
            value: 'pink',

            groupValue: mColor,

            activeColor: Colors.pink,

            title: Text('pink Color'),

            selected: mColor == 'pink' ? true : false,

            onChanged: (value) {
              mColor = value.toString();

              setState(() {});
            },
          ),

          gapBox(20, 10),
          Divider(),

          RadioListTile(
            groupValue: gender, 
            value: 'm',
            title: Text('ma'),
            onChanged: (value) {
            setState(() { gender = value.toString(); });
          },),
          gapBox(20, 10),
                    RadioListTile(
            groupValue: gender, 
            value: 'f',
            title: Text('female'),
            onChanged: (value) {
            setState(() { gender = value.toString(); });
          },),

          gapBox(20, 10),


          ElevatedButton(
            onPressed: () {
              print(nameCtr.text);
              print(mColor);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
