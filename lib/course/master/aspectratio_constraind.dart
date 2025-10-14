import 'package:flutter/material.dart';

class AspectRatioConstrainedBox extends StatelessWidget {
  const AspectRatioConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset('assets/img.png', fit: BoxFit.cover )),
        ),
          Divider(),
          Divider(),
          Divider(),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset('assets/img.png',fit: BoxFit.cover , )),
        ),
      ],),
    ),);
  }
}