// ignore_for_file: avoid_print

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
                customTerminalText("Clicked Elevated Button");
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
                customTerminalText("Text Button Clicked");
              },
              child: Text("Text 2"),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                customTerminalText("Outlined Button Clicked");
              },
              child: Text("Outlined 3"),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {
                customTerminalText("Icon Button Clicked");
              },
              icon: Icon(Icons.thumb_up),
            ),

            Divider(),

            //
            // ElevatedButton(
            //   onPressed: () {
            //     // Action for ElevatedButton
            //   },
            //   child: const Text('Elevated Button'),
            // ),
            // TextButton(
            //   onPressed: () {
            //     // Action for TextButton
            //   },
            //   child: const Text('Text Button'),
            // ),
            // OutlinedButton(
            //   onPressed: () {
            //     // Action for OutlinedButton
            //   },
            //   child: const Text('Outlined Button'),
            // ),
            // IconButton(
            //   icon: const Icon(Icons.thumb_up),
            //   onPressed: () {
            //     // Action for IconButton
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

void printMyline() {
  print("-----------------------");
}

void pintvalue(int arguA) {
  print("the Value of $arguA");
}

void sum(int x, int y) {
  // parameters
  print("X= $x, Y= $y");
  print("Sum is: ${x + y}");
}

void customTerminalText(String txt) {
  printMyline();
  print(txt);
  printMyline();
}
