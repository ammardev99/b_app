

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey[200],
        prefix: Icon(Icons.person),
        label: Text('Username'),
        hintText: 'Enter your username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Please enter username';
        }
        return null;
      },
    );
  }
}
