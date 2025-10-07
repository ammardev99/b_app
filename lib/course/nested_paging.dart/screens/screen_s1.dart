import 'package:b_app/course/nested_paging.dart/widget_page_indicator.dart';
import 'package:flutter/material.dart';

class ScreenS1 extends StatelessWidget {
  const ScreenS1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showPageInfo("ScreenS 1", clr: Colors.pink),
    );
  }
}