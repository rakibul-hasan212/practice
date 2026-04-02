import 'package:flutter/material.dart';

import 'customWidgets/MyTextFormFeild.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome!",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                MyTextFormFeild(
                  labelName: "Email",
                  hintMessage: "Enter your email",
                  preIconName: Icons.email_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextFormFeild(
                  labelName: "Password",
                  hintMessage: "Type your password",
                  preIconName: Icons.lock_outlined,
                  suffixIconName: Icons.visibility_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
