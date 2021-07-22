import 'package:flutter/material.dart';

class MenuScreenPage extends StatelessWidget {
  const MenuScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(161, 159, 243, 1.0),
      // body: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Padding(padding: EdgeInsets.only(left:30, top: 80)),
      //     Text('Summary', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),),
      // ]),
      body: Container(
        child: Text('Summary', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),),
        padding: EdgeInsets.only(left: 30, top: 70),
      ),
    );
  }
}
