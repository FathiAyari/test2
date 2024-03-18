import 'package:flutter/material.dart';

import 'element.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);
  List<String> data = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
    "item 5",
    "item 6",
    "item 7",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (context, index) {
      return ElementWidget(
        index: index,
      );
    }));
  }
}
