// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert Dialog',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('Show Alert')),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          title: Text('This is an Alert'),
          content: SingleChildScrollView(
            child: ListBody(
                children: [Text('This is a Demo'), Text('This is Aswin Biju')]),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'))
          ],
        );
      });
}
