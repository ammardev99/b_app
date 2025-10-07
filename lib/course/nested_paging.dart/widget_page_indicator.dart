import 'package:flutter/material.dart';

Widget showPageInfo(String title, {Color clr = Colors.red}) {
  return Container(
    color: clr,
    child: Center(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
