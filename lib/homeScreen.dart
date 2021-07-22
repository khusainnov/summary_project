import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 159, 243, 1.0),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 20)),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 60, right: 50)),
              Text('Summary', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(top: 80, left: 30)),
              Text('Cart', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
          ],)
        ],
      ),
    );
  }
}

