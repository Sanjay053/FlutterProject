import 'package:flutter/material.dart';
import 'package:flutter_app1/page/student_details.dart';

// ignore: must_be_immutable
class TabControllers extends StatelessWidget {
  TabControllers({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

   List<Widget> myWidget = [
    const Text("Hello",style: TextStyle(fontSize: 16),),
    const Text("Hai",style: TextStyle(fontSize: 16),),
    const Text("Welcom",style: TextStyle(fontSize: 16),),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Tab Page"),
      // ),
      body: DefaultTabController(
        length: myTabs.length,
        child: const Scaffold(
          body: TabBarView(
            children: [
              StudentDetailsForm(),
              Text('page not found'),
            ],
          ),
        ),
      ),
    );
  }
}
