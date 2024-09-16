import 'package:cardui/utils/colors.dart';
import 'package:cardui/utils/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: AppColors.bgColor),
      home: Home(),
    );
  }
}
