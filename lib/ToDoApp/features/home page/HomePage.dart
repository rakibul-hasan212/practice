import 'package:flutter/material.dart';
import 'package:practice/ToDoApp/core/validation.dart';
import 'package:practice/ToDoApp/widgets/custom_widgets/MyText.dart';
import '../LandingPage/LandingPage.dart';
import '../../widgets/custom_widgets/MyTextFormFeild.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  bool ObcureValue = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  void logIn(BuildContext context) {
    if (_key.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText.titleText("Welcome!", size: 40),
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
                      MyTextFormFeild(
                          ControllerMassage: _emailController,
                          keyboardValue: TextInputType.emailAddress,
                          labelName: "Email",
                          hintMessage: "Enter your mail",
                          preIconName: Icons.mail_outline,
                          validator: emailValidation),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextFormFeild(
                        ControllerMassage: _passController,
                        keyboardValue: TextInputType.visiblePassword,
                        labelName: "Password",
                        hintMessage: "Type your password",
                        preIconName: Icons.lock_outlined,
                        suffixIconName: Icons.visibility_outlined,
                        validator: passwordValidation,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    logIn(context);
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(child: MyText.buttonText("Log in")),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText.bodyText("Don't have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: MyText.buttonText("Sign Up", size: 14),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Sign Up OnTap Work perfectly")));
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
