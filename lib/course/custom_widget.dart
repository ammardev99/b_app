import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Text("data"),
      bankCard("1 txt "),
      bankCard("2 txt"),
      bankCard("3 txt"),
      bankCard("4 txt"),

      MyBankCard(),

      MyBankCard(txt: "label",)
    ],),);
  }
}


Widget bankCard(String txt){
  return Container(
    margin: EdgeInsets.all(10)   ,
    height: 40,
    width: 250,
    color: Colors.blue,
    child: Center(child: Text(txt)),
  );
}

// ignore: must_be_immutable
class MyBankCard extends StatelessWidget {
  String txt;
 MyBankCard({super.key, this.txt = "default txt"});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10)   ,
    height: 40,
    width: 250,
    color: Colors.red,
    child: Center(child: Text(txt)),

    );
  }
}