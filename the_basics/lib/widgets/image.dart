// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, spreadRadius: 9.0),
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              // image: DecorationImage(
              //     image: NetworkImage(
              //       'https://cdn.pixabay.com/photo/2024/01/15/11/36/batman-8510022_640.png',
              //     ),
              //     fit: BoxFit.cover)
              image: DecorationImage(
                  image: AssetImage('assets/spider.jpg'), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
