// 1. Basic Usage
// Text("Hello World")
// Difference between const Text vs normal Text
// Default styling - font size, colors, align, font type, ......
// 2. Text Styling with TextStyle
// fontSize - 8 ... 48
// fontWeight (thin → bold) - 100 ... 900
// fontStyle (normal, italic)
// color
// backgroundColor
// decorationColor
// letterSpacing
// wordSpacing
// height (line height / spacing between lines)
// decoration (underline, overline, lineThrough)
// decorationStyle (dotted, dashed, double, wavy)

// 3. Text Alignment & Direction
// textAlign (left, right, center, justify, start, end)
// softWrap
// maxLines
// overflow (clip, fade, ellipsis, visible)
// textDirection (LTR, RTL)

import 'package:flutter/material.dart';

class TextClass extends StatefulWidget {
  const TextClass({super.key});

  @override
  State<TextClass> createState() => _TextClassState();
}

class _TextClassState extends State<TextClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("1 All rights reserved. may no be reproduced"),
          Text('data', style: TextStyle(
          ),),

          // style
          Text(
            "2 All rights reserved. may no be reproduced",
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              backgroundColor: Colors.grey.shade300,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.green,
              decoration: TextDecoration.underline,
              letterSpacing: 0,
              wordSpacing: 10,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
