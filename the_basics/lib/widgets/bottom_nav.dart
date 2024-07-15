// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:the_basics/widgets/alert.dart';
import 'package:the_basics/widgets/dismissable.dart';
import 'package:the_basics/widgets/rowscols.dart';
import 'package:the_basics/widgets/snackbar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile')
  // ];
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Nav'),
      //   backgroundColor: Theme.of(context).primaryColor,
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissableWidget(),
          RowsCols(),
          SnackBarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: selectedindex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: onTapped),
    );
  }
}
