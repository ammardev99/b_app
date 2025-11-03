// ignore_for_file: avoid_print

import 'package:b_app/course/nested_paging.dart/pages/page_p1.dart';
import 'package:b_app/course/nested_paging.dart/pages/page_p2.dart';
import 'package:b_app/course/nested_paging.dart/pages/page_p3.dart';
import 'package:flutter/material.dart';

class BottomNavigationClass extends StatefulWidget {
  const BottomNavigationClass({super.key});

  @override
  State<BottomNavigationClass> createState() => _BottomNavigationClassState();
}

class _BottomNavigationClassState extends State<BottomNavigationClass> {
  int _currentPage = 0;

  final List<Widget> _pages = [
    PageP1(), // 0
    PageP2(), // 1
    PageP3(), // 2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],

        onTap: (int index) {
          setState(() {
            print("index: $index");
            print("Page: $_currentPage");
            _currentPage = index;
            print("Updated Page: $_currentPage");
          });
        },
      ),
    );
  }
}
