import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/pages/login.dart';
import 'package:flutter_ecommarce_task/shared/constColors.dart';
import 'package:flutter_ecommarce_task/widgets/c_btn.dart';
import 'package:flutter_ecommarce_task/widgets/c_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  const MyCustomTextField(
                    inputType: TextInputType.text,
                    isPassword: false,
                    hint: "Enter Your Username : ",
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const MyCustomTextField(
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                    hint: "Enter Your Email : ",
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const MyCustomTextField(
                    inputType: TextInputType.text,
                    isPassword: true,
                    hint: "Enter Your Password : ",
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  MyCBtn(
                    color: BTNgreen,
                    txt: "Sign up",
                    onClick: () {},
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do you have an account? ",
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      MyCTxtBtn(
                        onClick: () {},
                        color: Colors.black,
                        txt: "Sign in",
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
