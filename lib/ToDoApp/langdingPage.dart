
import 'package:flutter/material.dart';
import 'package:practice/ToDoApp/MyToDoTile.dart';
import 'package:practice/customWidgets/MyText.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget{

  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isTacker = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.yellow[100],
          appBar: AppBar(
            backgroundColor: Colors.yellow[400],
            title: MyText.titleText("ToDo App"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(height: 20,),
              MyToDoTile(
                  todotext: "Study About the Container",
                  value: isTacker,
                  onChanged: (value){
                setState(() {
                   isTacker = value!;
                });
              }),
              SizedBox(height: 10,),
              MyToDoTile(
                  todotext: "Study About the ListView",
                  value: isTacker,
                  onChanged: (value){
                setState(() {
                  isTacker = value!;
                });
              }),
              SizedBox(height: 10,),
              MyToDoTile(
                  todotext: "Study About the CustomWidgets making for reuse",
                  value: isTacker,
                  onChanged: (value){
                setState(() {
                  isTacker = value!;
                });
              })
              
            ],
          ),

    )
    );
  }
}