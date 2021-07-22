import 'package:flutter/material.dart';
import 'package:summary_project/homeScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreenPage(),
    Text('Summary Menu'),
    Text('Summary Search'),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 159, 243, 1.0),
      body:
      Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp, size: 26, color: Color.fromRGBO(161, 159, 243, 1.0),), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_sharp, size: 26, color: Color.fromRGBO(161, 159, 243, 1.0),), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.search_sharp, size: 26, color: Color.fromRGBO(161, 159, 243, 1.0),), label: 'Search'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

