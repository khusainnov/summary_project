import 'package:flutter/material.dart';
import 'package:summary_project/homeScreen.dart';
import 'package:summary_project/searchScreen.dart';
import 'package:summary_project/menuScreen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreenPage(),
    MenuScreenPage(),
    SearchScreenPage(),
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 28, color: Color.fromRGBO(169, 169, 208, 1.0),),
              activeIcon: Icon(Icons.home, size: 28, color: Color.fromRGBO(161, 159, 243, 1.0),),
              label: 'Home' ),
          BottomNavigationBarItem(
              // icon: Icon(Icons.add_circle_outline_sharp, size: 26, color: Color.fromRGBO(169, 169, 208, 1.0),),
              // activeIcon: Icon(Icons.add_circle_outlined, size: 26, color: Color.fromRGBO(161, 159, 243, 1.0)),
              icon: ImageIcon(AssetImage('assets/menu.png'), size: 50, color: Color.fromRGBO(255, 100, 0, 1.0),),
              activeIcon: ImageIcon(AssetImage('assets/menu.png'), size: 50, color: Color.fromRGBO(245, 120, 34, 1.0),),
              label: 'Menu'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp, size: 28, color: Color.fromRGBO(169, 169, 208, 1.0),),
            activeIcon: ImageIcon(AssetImage('assets/searchPressed.png'), size: 28, color: Color.fromRGBO(161, 159, 243, 1.0),),
            label: 'Search', ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

/* body: Container(
     child: Container(
       child: Container(),
     ),
   ),
* попробовать body прописать через ListView
*/


