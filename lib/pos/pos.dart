import 'package:b_app/widgets/pos/pos_widgets.dart';
import 'package:flutter/material.dart';

class POS extends StatelessWidget {
  const POS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Point of Sale'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          MyButton(label: "My Button", onPressed: (){}),
          
          // MyButton(onPressed: () {},),

          SizedBox(height: 20),
          MyButton(
            label: "Primary Button",
            bgColor: Colors.blue,
            onPressed: () {
              // ignore: avoid_print
              print('test');
            },
          ),


          SizedBox(height: 20),
          SizedBox(height: 20),

          MyButton(
            label: "Default Button",
            // bgColor: Colors.blue,
            fgColor: Colors.red,
            onPressed: () {
              // action
            },
          ),

          SizedBox(height: 20),
          MyButton(
            label: "Custom Button",
            bgColor: Colors.green,
            fgColor: Colors.white,
            elevation: 5,
            onPressed: () {
              // action
            },
            
          ),

          SizedBox(height: 20),

          const Center(
            child: Text('POS Interface Coming Soon!'),
          ),
        ],
      ),
    );
  }
}