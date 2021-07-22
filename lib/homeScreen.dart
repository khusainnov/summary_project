import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {

  late List itemCount = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 159, 243, 1.0),
      body:
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 70)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 30)),
              Text('Summary', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),),
            ],
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20, left: 110)),
              Text('Cart', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),),
          ],),
          // ListView.builder(
          //     itemCount: itemCount.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Text('Wassup');
          //     },
          // ),
        ],
      ),
    );
  }
}

