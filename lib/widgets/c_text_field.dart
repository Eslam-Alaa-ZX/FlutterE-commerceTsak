import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  final TextInputType inputType;
  final bool isPassword;
  final String hint;

  const MyCustomTextField(
      {Key? key,
      required this.inputType,
      required this.isPassword,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: inputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
