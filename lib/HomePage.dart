import 'package:flutter/material.dart';

import 'customWidgets/MyTextFormFeild.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text("Welcome to the Home page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black
          ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: MyTextFormFeild(),
          ),
        ],
      ),

    );
  }

}