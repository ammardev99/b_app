
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  const FormInput({super.key});

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  TextEditingController rollNo = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
bool passView = true;

  @override  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: rollNo,
                // Decoration
                decoration: InputDecoration(
                  label: Text("Roll No"),
                  // labelStyle: ,
                  hintText: "000",
                  // hintStyle:
                  // prefix: Icon(Icons.person, color: Colors.amber),
                  // suffix: Icon(Icons.visibility),
                ),
                // obscureText: true,
                // obscuringCharacter: '*',
              ),

              SizedBox(height: 20,),
              TextField(
                controller: fullNameController,
                // Decoration
                decoration: InputDecoration(
                  label: Text("Full Name"),
                  // labelStyle: ,
                  hintText: "Enter name here",
                  // hintStyle:
                  // prefix: Icon(Icons.person, color: Colors.amber),
                  // suffix: Icon(Icons.visibility),
                ),
                // obscureText: true,
                // obscuringCharacter: '*',
              ),

              SizedBox(height: 20,),
              TextField(
                controller: classController,
                // Decoration
                decoration: InputDecoration(
                  label: Text("Class"),
                  // labelStyle: ,
                  hintText: "Class name here",
                  // hintStyle:
                  // prefix: Icon(Icons.person, color: Colors.amber),
                  // suffix: Icon(Icons.visibility),
                ),
                // obscureText: true,
                // obscuringCharacter: '*',
              ),
              SizedBox(height: 20,),
              TextField(
                controller: paswordController,
                // Decoration
                decoration: InputDecoration(
                  label: Text("Password"),
                  // labelStyle: ,
                  hintText: "Enter Password here",
                  // hintStyle:
                  // prefix: Icon(Icons.person, color: Colors.amber),
                  suffix: IconButton(onPressed: (){
                    setState(() {
                    passView = !passView ? true :false;
                    });
                  }, icon: Icon(Icons.visibility)),
                ),
                obscureText: passView,
                // obscuringCharacter: '*',
              ),

              SizedBox(height: 20,),

              TextButton(onPressed: (){
                print(rollNo.text);
                print(fullNameController.text);
                print(classController.text);
                print(paswordController.text);
              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
