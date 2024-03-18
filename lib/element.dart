import 'package:flutter/material.dart';

class ElementWidget extends StatelessWidget {
  final int index;
  const ElementWidget({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      child: Container(
        color: Colors.red,
        child: ListTile(
          leading: Icon(
            Icons.add,
            color: Colors.white,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onTap: () {
            print(index);
          },
          title: Text(
            "Go to item number : ${index}",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
