// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:the_basics/widgets/alert.dart';
import 'package:the_basics/widgets/button.dart';
import 'package:the_basics/widgets/dismissable.dart';
import 'package:the_basics/widgets/drawer.dart';
import 'package:the_basics/widgets/image.dart';
import 'package:the_basics/widgets/list_grid.dart';
import 'package:the_basics/widgets/snackbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepPurple),
      home: AlertWidget(),
    );
  }
}
