import 'package:flutter/material.dart';

class MyCBtn extends StatelessWidget {
  final void Function() onClick;
  final Color color;
  final String txt;

  const MyCBtn(
      {Key? key, required this.onClick, required this.color, required this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
      child: Text(
        txt,
        style: const TextStyle(fontSize: 19),
      ),
    );
  }
}

class MyCTxtBtn extends StatelessWidget {
  final void Function() onClick;
  final Color color;
  final String txt;

  const MyCTxtBtn(
      {Key? key, required this.onClick, required this.color, required this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text(txt,
          style: TextStyle(
            color: color,
            fontSize: 18,
          )),
    );
  }
}
