
// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'package:b_app/course/22/tab_bar_view.dart';
import 'package:b_app/course/nested_paging.dart/pages/page_p3.dart';
import 'package:b_app/course/nested_paging.dart/screens/screen_s1.dart';
import 'package:b_app/course/nested_paging.dart/screens/screen_s2.dart';
import 'package:b_app/course/nested_paging.dart/screens/screen_s3.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t1.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t2.dart';
import 'package:b_app/course/nested_paging.dart/tabs/tab_t3.dart';
import 'package:flutter/material.dart';

import '../nested_paging.dart/pages/page_p1.dart';

// ignore: must_be_immutable
class PagingClass extends StatefulWidget {
   const PagingClass({super.key});

  @override
  State<PagingClass> createState() => _PagingClassState();
}

class _PagingClassState extends State<PagingClass> {
  int currentPage = 0;

  final List<Widget> _pages = [
    PageP1(), // 0
    // PageP2(), // 1
    PageP3(), // 2
    ScreenS1(),  // 3
    MyTabBarScreen(),
    ScreenS2(),  // 3
    ScreenS3(),  // 3
    Tabt1(),  // 4
    Tabt2(),  // 5
    Tabt3(),  // 6
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My main Frame 1"),),
      body: 
    PageView(
      controller: PageController(initialPage: currentPage),
      children: _pages,
      onPageChanged: (index) {
        setState(() {
        currentPage = index;
        print('Current Page: ${currentPage}');
      
        });
      },
    )
    ,);
  }
}