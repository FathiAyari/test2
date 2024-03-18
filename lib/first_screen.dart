import 'package:flutter/material.dart';
import 'package:jetpack/account_screen.dart';
import 'package:jetpack/child_screen.dart';
import 'package:jetpack/second_screen.dart';
import 'package:jetpack/settings.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
    BottomNavigationBarItem(icon: Icon(Icons.child_friendly), label: "child"),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "account"),
  ];
  List<Widget> pages = [
    Home(),
    SettingsScreen(),
    ChildScreen(),
    AccountScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(color: Colors.black),
            backgroundColor: Colors.blue,
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: items,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          child: Text("click"),
        ),
      ),
    );
  }
}
/* gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1, crossAxisCount: 8, mainAxisSpacing: 5, crossAxisSpacing: 10),*/
