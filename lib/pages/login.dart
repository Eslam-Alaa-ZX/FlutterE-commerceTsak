import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/widgets/c_text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: const [
              SizedBox(
                height: 64,
              ),
              MyCustomTextField(
                inputType: TextInputType.emailAddress,
                isPassword: false,
                hint: "Enter Your Email : ",
              ),
              SizedBox(
                height: 33,
              ),
              MyCustomTextField(
                inputType: TextInputType.text,
                isPassword: true,
                hint: "Enter Your Password : ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
