// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter/material.dart';

class ButtonsFunctions extends StatefulWidget {
  const ButtonsFunctions({super.key});

  @override
  State<ButtonsFunctions> createState() => _ButtonsFunctionsState();
}

class _ButtonsFunctionsState extends State<ButtonsFunctions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Functions')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Buttons types
            // ElevatedButton
            // TextButton
            // OutlinedButton
            // IconButton
            //
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.green),
              ),
              onPressed: () {
                // customTerminalText("Clicked Elevated Button");
              },
              child: Text(
                "Click 1",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // customTerminalText("Text Button Clicked");
              },
              child: Text("Text 2"),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // customTerminalText("Outlined Button Clicked");
              },
              child: Text("Outlined 3"),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {
                // customTerminalText("Icon Button Clicked");
              },
              icon: Icon(Icons.thumb_up),
            ),

            TextButton(
              onPressed: () {
                // printStrLine();
                printMyLine('#');
              },
              child: Text("Print Line"),
            ),

            SizedBox(height: 20),

            IconButton(
              onPressed: () {
                // sum(10, 15);
                print(50);
                print(sumValue(50, 10));
              },
              icon: Icon(Icons.calculate_rounded),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),

            // ),
            // myContainer("App Name",50, 300, Colors.green),
            myContainer(Icons.call, 50, 300, Colors.green),
            myContainer(Icons.video_call, 20, 100, Colors.red),
            printLineCard("Flutter"),
          ],
        ),
      ),
    );
  }
}

Widget printLineCard(String str, [String? chr]) {
  return Text("$chr*****$str*****$chr");
}

// print line
// print value
// Sum

void printStrLine() {
  print("*************************");
}

void printMyLine(String txt) {
  print(
    txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt +
        txt,
  );
}

void sum(int x, int y) {
  print("Sum: ${x + y}");
}

double sumValue(double x, double y) {
  return x + y;
}

Widget myContainer(IconData getIcon, double h, double w, Color getColor) {
  return Container(
    height: h,
    width: w,
    color: getColor,
    // child: Text(label),
    child: Icon(getIcon),
  );
}

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String label;
  VoidCallback onAction;
  bool show = false;
  double btnWidth;

  CustomButton({
    super.key,
    required this.label,
    this.btnWidth = 1,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity * btnWidth,
      child: Row(
        children: [
          show
              ? Icon(Icons.arrow_right_alt, color: Colors.blueAccent)
              : SizedBox(),

          ElevatedButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
              ),

              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            onPressed: onAction,
            child: Text(label, style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
