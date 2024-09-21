import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Whatsapp'),
          bottom:
              TabBar(indicatorWeight: 2, indicatorColor: Colors.black, tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'CHATS',
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: 'STATUS',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'CALL',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
