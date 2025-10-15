import 'package:b_app/course/nested_paging.dart/widget_page_indicator.dart';
import 'package:flutter/material.dart';

class PageP3 extends StatelessWidget {
  const PageP3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: const Text("Page P3"),
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //       bottomLeft: Radius.circular(100),
      //     )
      //   ),
      // ),
      body: showPageInfo("Page 3", clr: Colors.blue),
    );
  }
}