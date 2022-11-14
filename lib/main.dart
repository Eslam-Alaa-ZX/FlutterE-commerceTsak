import 'package:flutter/material.dart';
import 'package:flutter_ecommarce_task/pages/check_out.dart';
import 'package:flutter_ecommarce_task/pages/details.dart';
import 'package:flutter_ecommarce_task/pages/home_page.dart';
import 'package:flutter_ecommarce_task/pages/login.dart';
import 'package:flutter_ecommarce_task/pages/sign_up.dart';
import 'package:flutter_ecommarce_task/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { return Cart(); },
      child: MaterialApp(
        title: 'E-commerce app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

