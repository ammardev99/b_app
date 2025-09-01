// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Class1 extends StatefulWidget {
  const Class1({super.key});

  @override
  State<Class1> createState() => _Class1State();
}

class _Class1State extends State<Class1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Class1')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // create a inkwell & guesture detector example
          InkWell(
            onTap: null,
            child: Text('InkWell'),
          ),
          GestureDetector(
            onTap: null,
            child: Text('GestureDetector'),
          ),
      
          Text('Container'),
      
          Container(
            height: 100,
            width: 200,
            
            decoration: BoxDecoration(
            color: Colors.pink,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("data"),)
          ),
          // SizedBox(
          //   height: 20,
          // ),
      
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
            child: Center(child: Text("data"),)
          ),
      
      
          Text('SizedBox'),

// inkwell test container
Center(
  child: InkWell(
    onTap: () {
      print('Blue tapped');
    },
    onLongPress: () {
      print('Blue long pressed');
    },
    child: Container(
      height: 50,
      width: 50,
      color: Colors.blue,
    ),
  ),
),

SizedBox(height: 20,),
// gesture detector test container
Center(
  child: GestureDetector(
    onLongPress: () {
      print('Green tapped');
    },
    onTap: () {
      print('Green long pressed');
    },
    child: Container(
      height: 50,
      width: 50,
      color: Colors.green,
    ),
  ),
),

        ],
      ),
    );
  }
}
