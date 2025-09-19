
// ignore_for_file: avoid_print

import 'package:b_app/widgets/formatting.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class FormClass extends StatefulWidget {
  const FormClass({super.key});

  @override
  State<FormClass> createState() => _FormClassState();
}

class _FormClassState extends State<FormClass> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _myformKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Class')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _myformKey,
          child: Column(
            children: [
              gapBox(5,50),
              CustomInputField(),
              gapBox(20),
              CustomInputField(),
              gapBox(20),
              CustomInputField(),
              gapBox(20, 50),
              CustomInputField(),
              gapBox(20),
              
              ElevatedButton(
                onPressed: () {
                  if (_myformKey.currentState!.validate()) {
                    print('UsernameController: ${usernameController.text}');
                    print('PasswordController: ${passwordController.text}');
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class FormClass extends StatefulWidget {
//   const FormClass({super.key});

//   @override
//   State<FormClass> createState() => _FormClassState();
// }

// class _FormClassState extends State<FormClass> {
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//   final _myformKey = GlobalKey<FormState>();
//   bool isPasswordVisible = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Form Class')),
//       body: Form(
//         key: _myformKey,
//         child: Column(
//           children: [
//             SizedBox(height: 20),
        
//             TextFormField(
//               controller: usernameController,
//               decoration: InputDecoration(
//                 prefix: Icon(Icons.person),
//                 label: Text('Username'),
//                 hintText: 'Enter your username',
//                 border: OutlineInputBorder(),
//               ),
//               validator: (value){
//                 if(value == null || value.isEmpty){
//                   return 'Please enter username';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 prefix: Icon(Icons.lock),
//                 label: Text('Password'),
//                 hintText: 'Enter your 8Digit password',
//                 suffix: Icon(Icons.visibility),
//               ),
//               validator: (value){
//                 if(value == null || value.isEmpty){
//                   return 'Please enter password';
//                 }
//                 if(value.length < 8){
//                   return 'Password must be at least 8 characters';
//                 }
//                 if(!RegExp(r'[A-Z]').hasMatch(value)){
//                   return 'Password must contain at least one uppercase letter';
//                 }
//                 if(!RegExp(r'[a-z]').hasMatch(value)){
//                   return 'Password must contain at least one lowercase letter';
//                 }
//                 if(!RegExp(r'[0-9]').hasMatch(value)){
//                   return 'Password must contain at least one digit';
//                 }
//                 return null;
//               },
//             ),
            
            
//             SizedBox(height: 20),
//             TextFormField(
//               controller: confirmPasswordController,
//               decoration: InputDecoration(
//                 prefix: Icon(Icons.lock),
//                 label: Text('Confirm Password'),
//                 hintText: 'Enter your confirm 8Digit password',
//                 suffix: IconButton(onPressed: (){
//                   setState(() {
//                     isPasswordVisible = !isPasswordVisible;
//                   });
//                 }, icon: isPasswordVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility,
//               ),)),
//               validator: (value){
//                 if(value == null || value.isEmpty){
//                   return 'Please enter password';
//                 }
//                 if(passwordController.text != confirmPasswordController.text){
//                   return 'Confirm Password does not match';
//                 }
//                 return null;
//               },
//               obscureText: isPasswordVisible,
//             ),
            
            
//             SizedBox(height: 20),
        
//             ElevatedButton(
//               onPressed: () {

// if(_myformKey.currentState!.validate()){
//                   print('UsernameController: ${usernameController.text}');
//                 print('PasswordController: ${passwordController.text}');

// }
//               },
//               child: Text("Submit"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
