import 'package:flutter/material.dart';

class StackClass extends StatelessWidget {
  const StackClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment,
        children: [
          Stack(
            children: [


              Column(
                children: [
                  Container(
                    height: 150,
                    width: 360,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Stack Widget",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  // Container(height: 40, width: 360, color: Colors.grey.shade200),
                ],
              ),
          
              Positioned(
                bottom: 20,
                left: 18,


                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
              ),

            ],
          ),

                  // Container(height: 40, width: 360, color: Colors.grey.shade200),
                  // Container(height: 400, width: 360, color: Colors.grey.shade200),

          //           Stack(
          //             children: [
          //               Container(
          //                 height: 200,
          //                 width: 200,
          //                 color: Colors.grey,
          //               ),
          //               Container(
          //                 height: 25,
          //                 width: 25,
          //                 color: Colors.green,
          //               ),
          // Container(
          //                 height: 100,
          //                 width: 100,
          //                 color: Colors.red,
          //               ),

          //               Positioned(
          //                 bottom: 10,
          //                 right: 10,
          //                 child: Container(
          //                   // height: 25,
          //                   // width: 25,
          //                   color: Colors.yellow,
          //                   child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
          //                 ),
          //               ),

          //             ],
          //           ),
          SizedBox(height: 50),
          Divider(),
          SizedBox(height: 50),

          Container(height: 100, width: 100, color: Colors.grey),
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 25, width: 25, color: Colors.green),
        ],
      ),
    );
  }
}
