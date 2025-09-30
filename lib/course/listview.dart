import 'package:flutter/material.dart';

class ProductDataType {
  String name;
  double price;
  ProductDataType(this.name, this.price);
}

List<ProductDataType> rack = [
  ProductDataType("P1", 100),
  ProductDataType("P2", 200),
  ProductDataType("P3", 300),
  ProductDataType("P4", 400),
  ProductDataType("P5", 500),
];

// ignore: must_be_immutable
class ListViewClass extends StatefulWidget {
  ListViewClass({super.key});

  @override
  State<ListViewClass> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  List<String> myCollection = [
    "HBL2", 
    "HBL2", 
    "HBL2", 
    "HBL2", 
    "HBL2", 
    "UBL", 
    "UBL", 
    "UBL", 
    "UBL", 
    "UBL", 
    "MCB", 
    "MCB", 
    "MCB", 
    "MCB", 
    "MCB", 
    "Meezan"
    "Meezan"
    "Meezan"
    "Meezan"
    "Meezan"
    ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(myCollection[1]),

          TextButton(
            onPressed: () {
              print(rack[0].price);
              rack[0].price = 500;
              print(rack[0].price);
              // setState(() {
              //
              // });
            },
            child: Text("data", ),
          ),

          Row(
            children: [
              Text(rack[currentIndex].name),
              Text(' : '),
              Text(rack[currentIndex].price.toString()),
            ],
          ),

          // Expanded(
          //   child: ListView.builder(
          //     itemCount: myCollection.length,
          //     itemBuilder: (context, index) {
          //     return Text(myCollection[index]);
          //   },),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: myCollection.length,
              itemBuilder: (context, index) {
                return bankcard(myCollection[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget bankcard(String txt) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 2),
    width: 200,
    height: 48,
    color: Colors.black38,
    child: Text(txt, style: TextStyle(color: Colors.white)),
  );
}
