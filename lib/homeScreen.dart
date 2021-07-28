import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {

  final List<String> products = [
    "Bread",
    "Milk",
    "Water",
    "Apple",
    "Jam",
    "Juice",
  ];

  List<int> colories = [
    15,
    20,
    0,
    8,
    34,
    13,
  ];

  List<int> sumColories = [
    8,
    34,
    13,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(161, 159, 243, 1.0),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, right: 160),
              child: Text('Summary', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(right: 230),
              child: Text('Cart', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),),
            ),
            SizedBox(height: 10,),
            Container(
              child: ListView.builder(itemCount: products.length, itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 25,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('${index + 1}.', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, height: -1.2),),
                      ),
                      SizedBox(width: 10),
                      Center(
                        child: Text('${products[index]}',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, height: -1.2))
                      ),
                      SizedBox(width: 150,),
                      Center(
                          child: Text('${colories[index]} гр',
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, height: -1.2), textAlign: TextAlign.end,)
                      ),
                    ],
                  ),
                );
              }),
              margin: EdgeInsets.only(left: 35, ),
              width: 320,
              height: 450,
              decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 236, 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Text('Result', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),),
            ),
              SizedBox(height: 5,),
              Container(
                child: Center(
                child: ListView.builder(itemCount: sumColories.length, itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 25,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('Number of b/u: ${colories[index]}',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500, height: -1.2),),
                        ],
                      ),
                    );
                  }),
                ),
                margin: EdgeInsets.only(left: 35),
                width: 320,
                height: 90,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(209, 209, 236, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
              ),
          ],
        ),
    );
  }
}


/*
  Container(
            width: 320,
            height: 500,
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 209, 236, 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
        )

*  Column(
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
            ],
          ),
        ],
      ),
* */

/* body: Container(
     child: Container(
       child: Container(),
     ),
   ),
* попробовать body прописать через ListView
*/

