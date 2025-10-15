import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  CustomInput({super.key});
  // controller  Full Name, Email, Password
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // form key
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomInputField(
                label: "Enter Full Name",
                controller: fullNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              CustomInputField(
                label: "Enter Email",
                controller: emailController,
              ),
              SizedBox(height: 20),
              CustomInputField(
                label: "Enter Password",
                controller: passwordController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Full Name: ${fullNameController.text}");
                    print("Email: ${emailController.text}");
                    print("Password: ${passwordController.text}");
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  String label;
  TextEditingController controller = TextEditingController();
  // validator
  Function? validator;

  CustomInputField({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: label,
        border: OutlineInputBorder(),

      ),
      validator: validator != null ? (value) => validator!(value) : null,
    );
  }
}
