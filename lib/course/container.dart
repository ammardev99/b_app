

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContainerClass extends StatelessWidget {
  const ContainerClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: BackButton(
            onPressed: () {
              context.pop();
            },
          ),
          title: Text("Container Class"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 100,
            //   width: 100,
            //   // color: Colors.red,
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(100),
            //       bottomRight: Radius.circular(20),
            //     ),
            //     // boxShadow: [
            //     //   BoxShadow(
            //     //     color: Colors.grey.shade400,
            //     //     blurRadius: 10,
            //     //     spreadRadius: 1,
            //     //     offset: Offset(5, 5),
            //     //   ),
            //     // ],
            //     // gradient: LinearGradient(
            //     //   colors: [
            //     //     Colors.red,
            //     //     Colors.yellow,
            //     //   ],
            //     //   begin: Alignment.topLeft,
            //     //   end: Alignment.bottomRight,
            //     // ),
      
                
            //     border: Border.all(
            //       color: Colors.black,
            //       width: 5,
            //     ),
            //   ),
            //   child: Center(child: Text("Container")),
            // ),
      
            ///////////////
            SizedBox(height: 20,),
            Container(
              height: 360,
              width: 360,
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              child: Container(
                margin: EdgeInsets.all(40),
                color: Colors.red,
                // yellow
                child: Container(
                  margin: EdgeInsets.all(40),
                  color: Colors.yellow,
                  // green
                  child: Container(
                    margin: EdgeInsets.all(40),
                    color: Colors.green,
                  ),
                ),
                
              ),
              
            )
          ],
        ),
      ),
    );
  }
}