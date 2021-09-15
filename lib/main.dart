import 'package:flutter/material.dart';
import 'package:walletui/ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Ui(),
    Ui(),
    Ui(),

  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
         
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      ),
    );
  }
}
