import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 159, 243, 1.0),
      body: Row(
        children: [
          Padding(padding: EdgeInsets.only(top: 150, left: 40)),
          Text('Summary', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700), textAlign: TextAlign.start,),
        ],
      ),

    );
  }
}
