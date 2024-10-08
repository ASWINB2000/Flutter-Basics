// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:the_basics/widgets/alert.dart';
import 'package:the_basics/widgets/animated_text.dart';
import 'package:the_basics/widgets/bottom_nav.dart';
import 'package:the_basics/widgets/bottom_sheet.dart';
import 'package:the_basics/widgets/dropdown_list.dart';
import 'package:the_basics/widgets/imagepicker.dart';
import 'package:the_basics/widgets/tabbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.green),
      home: ImagePickerWidget(),
    );
  }
}
