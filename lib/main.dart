import 'package:flutter/material.dart';
import 'package:jetpack/first_screen.dart';

void main() {
  runApp(MaterialApp(home: FirstScreen()));
/* int test = 5;
  String isString = "hello";
  double number = 45.5;
  List<int> data = [12, 45, 78, 85];
  Map<String, int> dict = {"price": 12, "reduction": 123, "tva": 21};

  dict.forEach((key, value) {
    print("the key is :$key and the value is : $value");
  });
  Iterable<MapEntry<String, int>> eterable = dict.entries;
  for (MapEntry<String, int> entry in eterable) {
    print(entry.value);
  }
  //print("test value is : $isString");
  print("----------var------------\n");
  var test;
  test = 12;
  test = "test";
String value="vallue";

  test = 12;
  print("the runtime type of the test variable is :${test.runtimeType}");
  print("----------dynamic------------\n");
  dynamic testDynamic = 45;
  testDynamic = "test hello";
  testDynamic = 78;

  print("the runtime type of the testDynamic variable is :${testDynamic.runtimeType}");

  print("----------const------------\n");
  const pi = 3.14;

  print(pi);
  */
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.plus_one,
            color: Colors.red,
          ),
          onPressed: () {
            value++;
            print(value);
          },
        ),
        body: SafeArea(child: Center(child: Text("$value"))),
      ),
    );
  }
}

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int value = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("here initState method");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.plus_one,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            value++;
          });
          print(value);
        },
      ),
      body: SafeArea(child: Center(child: Text("$value"))),
    );
  }
}
