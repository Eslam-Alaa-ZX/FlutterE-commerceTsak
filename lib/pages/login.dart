import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/pages/sign_up.dart';
import 'package:flutter_ecommarce_task/shared/constColors.dart';
import 'package:flutter_ecommarce_task/widgets/c_btn.dart';
import 'package:flutter_ecommarce_task/widgets/c_text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
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
                  txt: "Sign in",
                  onClick: () {},
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do not have an account? ",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    MyCTxtBtn(
                      onClick: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()),
                        );
                      },
                      color: Colors.black,
                      txt: "Sign up",
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
