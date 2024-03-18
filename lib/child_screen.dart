import 'package:flutter/material.dart';

class ChildScreen extends StatelessWidget {
  const ChildScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.red,
      child: Image.network(
        "https://firebasestorage.googleapis.com/v0/b/bhapp-f1523.appspot.com/o/chair.png?alt=media&token=f4f4f3b2-59e4-4985-b5ea-2b5f95ca9a3d",
        height: 600,
        fit: BoxFit.fill,
      ),
    ));
  }
}
