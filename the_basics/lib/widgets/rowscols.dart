// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows & Coloumns"),
      ),
      body: Container(
          height: 300,
          width: w,
          color: Colors.amber,
          child: Row(
            // direction: Axis.vertical, alignment: WrapAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.red,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.blue,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.black,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.purple,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
