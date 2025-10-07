import 'package:b_app/course/nested_paging.dart/widget_page_indicator.dart';
import 'package:flutter/material.dart';

class Tabt1 extends StatelessWidget {
  const Tabt1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showPageInfo("Tabt 1", clr: Colors.brown),
    );
  }
}