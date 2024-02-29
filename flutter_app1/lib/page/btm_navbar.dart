import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_app1/page/list_view.dart';
import 'package:flutter_app1/page/tabbar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;
  List<Widget> myWidget = [
    const Center(
      child: Text(
        "Hello",
        style: TextStyle(fontSize: 16),
      ),
    ),
    TabControllers(),
    ListView.builder(
      itemBuilder: (context, index) => ShowList(value: 'value'),
      itemCount: 4,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter App"),
        backgroundColor: Colors.lightBlue,
      ),
      body: IndexedStack(
        index: myIndex,
        children: myWidget,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            backgroundColor: Colors.blue,
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bolt_outlined,
            ),
            backgroundColor: Colors.yellow,
            label: "info",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            backgroundColor: Colors.orange,
            label: "list",
          )
        ],
      ),
    );
  }
}
