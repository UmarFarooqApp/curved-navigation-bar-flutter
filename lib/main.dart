import 'package:flutter/material.dart';
import 'package:ui_17/page/Cuvred_Navigaftion_Bar.dart';
import 'package:ui_17/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const Cuvred_Navigaftion_Bar(),
    );
  }
}
