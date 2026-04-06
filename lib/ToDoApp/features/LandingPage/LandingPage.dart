import 'package:flutter/material.dart';
import 'package:practice/ToDoApp/features/todo%20list%20page/todo_tile_page.dart';
import 'package:practice/ToDoApp/widgets/custom_widgets/MyText.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Landing Page"),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.swipe_left,
              size: 40,color: Colors.orange,)
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          MyText.titleText(
            "Welcome to the Landing Page",
            textcolor: Colors.white,
          ),
          SizedBox(height: 40,),
          Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16)),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => todo_tile_page()));
                  },
                  child: Center(child: MyText.buttonText("Move to ToDo List"))))
        ],
      ),
    );
  }
}
