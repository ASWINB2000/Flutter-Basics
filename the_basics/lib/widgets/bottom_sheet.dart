// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  isDismissible: true,
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Orange'),
                          subtitle: Text('Karan'),
                        ),
                        ListTile(
                          title: Text('Apple'),
                          subtitle: Text('Aswin'),
                        ),
                        ListTile(
                          title: Text('Mango'),
                          subtitle: Text('Biju'),
                        ),
                        ListTile(
                          title: Text('Grapes'),
                          subtitle: Text('Byju'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('Show bottom sheet')),
      ),
    );
  }
}
