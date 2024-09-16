import 'package:cardui/utils/colors.dart';
import 'package:cardui/utils/pages/content.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(boxShadow: AppColors.shadows),
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.height,
          child: Content(),
        ),
      ),
    );
  }
}
