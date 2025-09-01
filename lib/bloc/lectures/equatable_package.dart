// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Box extends Equatable {
  final String name;
  final int sizeX;
  final int sizeY;
  const Box(this.name, this.sizeX, this.sizeY);

  @override
  List<Object?> get props => [name, sizeX, sizeY];
}

// by default, in dart two instances of a class are not equal
// hashcode and == operator are not overridden
// to make them equal, we can use equatable package

// setps to use equatable package
// 1. add equatable package to pubspec.yaml
// 2. import 'package:equatable/equatable.dart';
// 3. extend Equatable class
// 4. override props getter
// 5. now two instances of the class with same properties will be equal

class EquatablePkg extends StatefulWidget {
  const EquatablePkg({super.key});

  @override
  State<EquatablePkg> createState() => _EquatablePkgState();
}

class _EquatablePkgState extends State<EquatablePkg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            final box1 = Box("Box 1", 10, 20);
            final box2 = Box("Box 1", 10, 20);

            // Without equatable package, this will be false
            print(box1 == box2);
            print(box1.hashCode.toString());
            print(box2.hashCode.toString());
          },
          icon: Icon(Icons.ads_click),
        ),
      ),
    );
  }
}
