// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                      action: SnackBarAction(
                        label: "Undo",
                        textColor: Colors.blue,
                        onPressed: () {},
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      // backgroundColor: Colors.white,
                      behavior: SnackBarBehavior.floating,
                      // padding: EdgeInsets.all(20),
                      duration: const Duration(milliseconds: 1000),
                      content: Text('This is a SNACK BAR'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Show snackbar'))),
      ),
    );
  }
}
