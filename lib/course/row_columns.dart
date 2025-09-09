// practice row and column
import 'package:flutter/material.dart';

class RowColumns extends StatefulWidget {
  const RowColumns({super.key});

  @override
  State<RowColumns> createState() => _RowColumnsState();
}

class _RowColumnsState extends State<RowColumns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.lime, height: 40, width: 40),
            Container(color: Colors.yellow, height: 40, width: 40),
            Container(color: Colors.red, height: 100, width: 40),
            Container(color: Colors.yellow, height: 40, width: 40),
            Container(color: Colors.pink, height: 40, width: 40),
            Container(color: Colors.lime, height: 40, width: 40),
            Container(color: Colors.yellow, height: 40, width: 40),
            Container(color: Colors.red, height: 100, width: 40),
            Container(color: Colors.yellow, height: 40, width: 40),
            Container(color: Colors.pink, height: 40, width: 40),
            Container(color: Colors.lime, height: 40, width: 40),
              Container(color: Colors.pink, height: 40, width: 40),
            Container(color: Colors.lime, height: 40, width: 40),
            Container(color: Colors.yellow, height: 40, width: 40),
            Container(color: Colors.red, height: 100, width: 40),
            Container(color: Colors.yellow, height: 40, width: 40),
            Container(color: Colors.pink, height: 40, width: 40),
        //      ElevatedButton(onPressed: (){
        //   // context.go('/home');
        //   context.go(AppRoutes.iconsImages);
        
        //  }, child: Text("Click Me to iconsImages")),
        
        
          ],
        ),
      ),
    );
  }
}
