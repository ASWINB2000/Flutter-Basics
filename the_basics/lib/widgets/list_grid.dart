// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Mango', 'Apple', 'Banana'];
  Map fruits_person = {
    'fruits': ['Orange', 'Mango', 'Apple', 'Banana'],
    'names': ['Aswin', 'Biju', 'Samuel', 'Sona']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         splashColor: Colors.amber,
        //         onTap: () {
        //           print(fruits_person['fruits'][index]);
        //           print(fruits_person['names'][index]);
        //         },
        //         mouseCursor: SystemMouseCursors.cell,
        //         hoverColor: Colors.red,
        //         leading: Icon(Icons.person),
        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),
        //       ),
        //     );
        //   },
        //   // children: [
        //   // Card(
        //   //   child: ListTile(
        //   //     title: Text('Orange'),
        //   //     subtitle: Text('Karan'),
        //   //   ),
        //   // )
        //   // ],
        // ),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Card(
              child: Center(child: Text('orange')),
            )
          ],
        ),
      ),
    );
  }
}
