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
    // void _onItemTap(int index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.date_range), label: 'Statistics'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_giftcard), label: 'Wallet'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
