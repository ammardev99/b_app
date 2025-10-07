import 'package:b_app/course/nested_paging.dart/widget_page_indicator.dart';
import 'package:flutter/material.dart';

class ScreenS3 extends StatelessWidget {
  const ScreenS3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showPageInfo("ScreenS 3", clr: Colors.yellow),
    );
  }
}