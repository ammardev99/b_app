import 'package:b_app/course/nested_paging.dart/pages/page_p1.dart';
import 'package:b_app/course/nested_paging.dart/pages/page_p2.dart';
import 'package:b_app/course/nested_paging.dart/pages/page_p3.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameF extends StatefulWidget {
  FrameF({super.key});

  @override
  State<FrameF> createState() => _FrameFState();
}

class _FrameFState extends State<FrameF> {
  int currentPageIndex = 0;

  final List<Widget> myPages = [
    PageP1(),
    PageP2(),
    PageP3(),
    // ScreenS3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("F -> S${currentPageIndex+1}")),
      body: myPages[currentPageIndex],

      // bottom bar to call my pages page1 to 4
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.looks_one),
              onPressed: () {
                setState(() {
                  currentPageIndex = 0;
                });
                print("Navigate to Tab T1  $currentPageIndex");
                // Navigate to Page 1
              },
            ),
            IconButton(
              icon: Icon(Icons.looks_two),
              onPressed: () {
                setState(() {
                  setState(() {
                    currentPageIndex = 1;
                  });
                });
                // Navigate to Page 2
                print("Navigate to Tab T2  $currentPageIndex");
              },
            ),
            IconButton(
              icon: Icon(Icons.looks_3),
              onPressed: () {
                setState(() {
                  currentPageIndex = 2;
                });
                // Navigate to Screen S3
                print("Navigate to Tab T3  $currentPageIndex");
              },
            ),
          ],
        ),
      ),
    );
  }
}
