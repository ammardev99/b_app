import 'package:b_app/course/nested_paging.dart/widget_page_indicator.dart';
import 'package:flutter/material.dart';

class PageP1 extends StatelessWidget {
  const PageP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Page P1"),
      ),
      body: showPageInfo("Page 1", clr: Colors.red),
    );
  }
}