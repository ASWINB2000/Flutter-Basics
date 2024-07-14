// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://i1.sndcdn.com/avatars-fN7ywolnGmcHbfbe-GLzTQA-t240x240.jpg'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aswin Biju',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'aswinbijux@gmail.com',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              ListTile(
                onTap: () {
                  'Hello';
                },
                splashColor: Colors.black,
                leading: Icon(Icons.folder),
                title: Text(
                  'My File',
                ),
                textColor: Colors.white,
                iconColor: Colors.amber,
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text(
                  'Shared With Me',
                ),
                textColor: Colors.white,
                iconColor: Colors.amber,
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text(
                  'Trash',
                ),
                textColor: Colors.white,
                iconColor: Colors.amber,
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text(
                  'Upload',
                ),
                textColor: Colors.white,
                iconColor: Colors.amber,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text(
                  'Share',
                ),
                textColor: Colors.white,
                iconColor: Colors.amber,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                ),
                textColor: Colors.white,
                iconColor: Colors.amber,
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      body: Container(
        child: Center(child: Text('Hey there')),
      ),
    );
  }
}
