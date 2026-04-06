import 'package:flutter/material.dart';
import 'package:practice/customWidgets/MyText.dart';

import 'ToDoApp/LandingPage.dart';
import 'customWidgets/MyTextFormFeild.dart';

class HomePage extends StatelessWidget {
   HomePage ({super.key});
   TextEditingController _emailController = TextEditingController();
   TextEditingController _passController = TextEditingController();
   bool ObcureValue = true;
   final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value!.isEmpty || !value.contains("@gmail.com")){
                            return "Enter your valid maill";
                          }
                          return null;

                        },
                        decoration: InputDecoration(
                          label: Text("Email"),
                          hintText: "Enter your mail here",
                          prefixIcon: Icon(Icons.mail_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14)
                          )
                        ),
                      ),
                      // MyTextFormFeild(
                      //   labelName: "Email",
                      //   hintMessage: "Enter your email",
                      //   preIconName: Icons.email_outlined,
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _passController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: ObcureValue,
                        validator: (value){
                          if(value!.isEmpty || value.length < 6){
                            return "Enter your valid password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            label: Text("Password"),
                            hintText: "Enter your password here",
                            prefixIcon: Icon(Icons.lock_outlined),
                            suffixIcon: Icon(Icons.visibility_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14)
                            )
                        ),
                      ),
                      // MyTextFormFeild(
                      //   labelName: "Password",
                      //   hintMessage: "Type your password",
                      //   preIconName: Icons.lock_outlined,
                      //   suffixIconName: Icons.visibility_outlined,
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    if(_key.currentState!.validate()){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => LandingPage()));
                    }
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                        child: MyText.buttonText("Log in")),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText.bodyText("Don't have an account?"),
                    SizedBox(width: 5,),
                    GestureDetector(
                      child: MyText.buttonText("Sign Up",size: 14),
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign Up OnTap Work perfectly")));
                      },
                    )

                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
