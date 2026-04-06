
import 'package:flutter/material.dart';
import 'package:practice/ToDoApp/widgets/custom_widgets/MyToDoTile.dart';
import 'package:practice/ToDoApp/widgets/custom_widgets/MyText.dart';
class todo_tile_page extends StatefulWidget{

  todo_tile_page({super.key});

  @override
  State<todo_tile_page> createState() => _HomepageState();
}

class _HomepageState extends State<todo_tile_page> {

  void onChanged(int index){
    setState(() {
      toDoInfo[index][0] = !toDoInfo[index][0];
    });
  }

  List toDoInfo = [
    [false,"Study about the Container Widget"],
    [false,"Study about the Column Widget"],
    [false,"Study about the Row Widget"],
    [false,"Study about the ListView Widget"],
    [false,"Study about the GridView Widget"],
    [false,"SingleChildScrolView Widget"],
    [false,"Study about the Padding Widget"],
    [false,"Study about the Center Widget"],
    [false,"Study about the Button Widget"],
    [false,"Study about the Form Widget"]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: MyText.titleText("ToDo App"),
            centerTitle: true,
            toolbarHeight: 80,
            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.swipe_left,
                size: 40,color: Colors.orange,
              ),
            ),
          ),
          body: ListView.builder(
              itemCount: toDoInfo.length,
              itemBuilder: (context , index){
                return MyToDoTile(
                    value: toDoInfo[index][0],
                    onChanged:(p0){
                      onChanged(index);
                    },
                  todotext: toDoInfo[index][1]
                );
              })
    )
    );
  }
}