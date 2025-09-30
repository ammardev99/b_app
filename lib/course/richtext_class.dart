
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class RichTextClass extends StatelessWidget {
   RichTextClass({super.key});
int num = 521810510;
// lets show this number like 521,810,510 by using intl package

   @override
  Widget build(BuildContext context) {
    final time = DateTime.now();
    String formattedTime = DateFormat('hh:mm a').format(time);

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "This is Flutter Class + $formattedTime  ${time.day} ${time.hour}:${time.minute}",
            ),
          // lets show here 
          // num / like 521,810,510 
          Text( NumberFormat.decimalPattern('en_US').format(num), ),


          
          RichText(
            
            text: TextSpan(
            text: "This is Flutter Class ",
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: [


              TextSpan( 
                text: "Sept ", style: TextStyle( color: Colors.blue, fontSize: 25, ),),
              TextSpan( text:  NumberFormat.decimalPattern('en_US').format(num), style: TextStyle( color: Colors.red, fontSize: 25, ),),


            ]


          ),), 
SizedBox(height: 40,),

          Text("This is Flutter Class Sept 2025"),
          Text("This is Flutter Class Sept 2025", style: TextStyle(fontFamily: 'Roboto'),),
          Text("This is Flutter Class Sept 2025", style: TextStyle(fontFamily: 'Heebo'),),
          Text("This is Flutter Class Sept 2025", style: TextStyle(fontFamily: 'MyF', fontWeight: FontWeight.bold),),
          Text("This is Flutter Class Sept 2025"),
          Text("This is Flutter Class Sept 2025", style: GoogleFonts.bitter(
            color: Colors.purple, fontSize: 20
          ),),
        

        ],),
      ),
    );
  }
}