import 'package:b_app/course/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClassList extends StatefulWidget {
  const ClassList({super.key});

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.container);
            },
            child: Text("container"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.stackClass);
            },
            child: Text("Stack"),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.iconsImages);
            },
            child: Text("IconsImages"),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.buttonsFunctions);
            },
            child: Text("Buttons"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.testRiverPod);
            },
            child: Text("TestRiverPod"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.formClass);
            },
            child: Text("FormClass "),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.formClass);
            },
            child: Text("FormClass "),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go(AppRoutes.pos);
            },
            child: Text("POS"),
          ),
        ],
      ),
    );
  }
}
