// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  overlayColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(20),
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
              child: Text(
                'Press Me',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)))),
                  onPressed: () {
                    print('Like');
                  },
                  child: Text(
                    'Press Me',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
