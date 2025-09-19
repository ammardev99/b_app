import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  // perameters
  String label;
  Color bgColor ;
  Color fgColor;
  double elevation = 0;
  // onpress function
  Function()? onPressed;
  // constructor default values
  MyButton({
    super.key,
    required this.label,
    this.bgColor = Colors.grey,
    this.fgColor = Colors.white,
    this.elevation = 0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          // borderradius
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          elevation: WidgetStateProperty.all(elevation),
          backgroundColor: WidgetStateProperty.all(bgColor),
        ),
        child: Text(label, style: TextStyle(color: fgColor)),
      ),
    );
  }
}
