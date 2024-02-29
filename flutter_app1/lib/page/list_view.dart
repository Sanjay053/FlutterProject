// ignore_for_file: must_be_immutable, no_logic_in_create_state

import 'package:flutter/material.dart';

class ShowList extends StatefulWidget {
  String value;
  ShowList({super.key, required this.value});

  @override
  State<ShowList> createState() => _ShowListState(value);
}

class _ShowListState extends State<ShowList> {
  String value;

  _ShowListState(this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(
          Icons.access_alarm,
          size: 60,
        ),
        trailing: const Icon(
          Icons.menu_book,
          size: 60,
        ),
        title: Text(value),
        subtitle: const Text('description'),
        onTap: () {},
        contentPadding: const EdgeInsets.all(8),
        minLeadingWidth: 100,
        iconColor: Colors.indigo,
        tileColor: Colors.amberAccent,
        textColor: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
