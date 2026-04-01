import 'package:flutter/material.dart';

class MyTextFormFeild extends StatelessWidget{
  MyTextFormFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        label: Text("Email"),
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
        hintText: "Enter your email",
        hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey
        ),
        prefixIcon: Icon(Icons.email_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16)
        )
          
      ),

    );
  }
}