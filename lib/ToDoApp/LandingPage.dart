import 'package:flutter/material.dart';
import 'package:practice/customWidgets/MyText.dart';

class LandingPage extends StatelessWidget{
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Center(child: MyText.titleText("Welcome to the Landing Page",textcolor: Colors.white,)),
    );
  }

}