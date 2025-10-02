// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PersonModel {
  final String img;
  final String name;
  final int rollNo;
  final Color themeColor;
  PersonModel({
    required this.img,
    required this.name,
    required this.rollNo,
    required this.themeColor,
  });
}

List<PersonModel> personList = [
  PersonModel(img: 'assets/female/female1.png',name: 'John Doe',rollNo: 1,themeColor: Colors.blue,),
  PersonModel(img: 'assets/female/female2.png',name: 'Jane Smith',rollNo: 2,themeColor: Colors.red,),
  PersonModel(img: 'assets/man/man1.png',name: 'Alice Johnson',rollNo: 3,themeColor: Colors.green,),
  PersonModel(img: 'assets/man/man2.png',name: 'Bob Brown',rollNo: 4,themeColor: Colors.orange,),
  PersonModel(img: 'assets/female/female1.png',name: 'John Doe',rollNo: 5,themeColor: const Color.fromARGB(255, 87, 131, 168),),
  PersonModel(img: 'assets/female/female2.png',name: 'Jane Smith',rollNo: 6,themeColor: const Color.fromARGB(255, 123, 20, 13),),
  PersonModel( img: 'assets/man/man1.png', name: 'Alice Johnson', rollNo: 7, themeColor: Colors.teal, ),
  PersonModel(img: 'assets/man/man2.png',name: 'Bob Brown',rollNo: 8,themeColor: Colors.yellow,),
  PersonModel(img: 'assets/female/female1.png',name: 'John Doe',rollNo: 9,themeColor: Colors.grey,),
  PersonModel(img: 'assets/female/female2.png',name: 'Jane Smith',rollNo: 10,themeColor: Colors.red,),
];


Widget personCard(PersonModel obj){
  return ListTile(
    hoverColor: obj.themeColor.withOpacity(0.2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    tileColor: obj.themeColor,
    splashColor: obj.themeColor.withOpacity(0.8),

    onTap: (){},
    leading: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset('assets/female/female1.png',)),
    title: Text(obj.name, style: TextStyle(fontWeight: FontWeight.bold),),
    subtitle: Text(obj.rollNo.toString()),
    trailing: Icon(Icons.arrow_forward_ios, size: 16,),
  );
}