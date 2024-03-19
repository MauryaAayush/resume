import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/utils/views/MainScreen.dart';
import 'package:resume/utils/views/PDF_screen.dart';
import 'package:resume/utils/views/check.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xFFbf0603)));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  Mycheck(),
    );
  }
}




