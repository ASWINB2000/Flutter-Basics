// ignore_for_file: prefer_const_constructors, camel_case_types, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Text('Container and Sized box'),
      ),
      // body: Center(
      //   child: SizedBox(
      //     height: 50,
      //     width: 50,
      //     child: Text("Hello"),
      //   ),
      // ),
      body: Center(
        child: Container(

            // padding: EdgeInsets.all(10),
            // color: Colors.blue,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(20)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, spreadRadius: 20, color: Colors.black)
                ]),
            child: Center(
                child: Center(
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
              ),
            ))),
      ),
    );
  }
}
