import 'package:b_app/config/model/person_model.dart';
import 'package:b_app/widgets/formatting.dart';
import 'package:flutter/material.dart';

class MyListsView extends StatelessWidget {
  const MyListsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(
        // itemCount: personList.length, //10
        // physics: BouncingScrollPhysics(), //animation effect
        // itemBuilder: (context, index) { // 0 to 9
          // return personCard(personList[index]); // call my card
        // },
      // ),

      // body:  ListView.separated(         // total lenght
        //  itemCount: personList.length,         // call my main card 0 to 10
        // itemBuilder: (context, index) {
        // return personCard(personList[index]);},        // between card space as black
      // separatorBuilder: (context, index) {
        // return gapBox(10); },
      // ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: (context, index) {
        return personCard(personList[index]);
      },),
    );
  }
}
