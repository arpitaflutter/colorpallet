import 'dart:math';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List Colorlist1 = [Colors.red,Colors.blue,Colors.teal,Colors.deepPurpleAccent,Colors.lightBlue];
  List Colorlist2 = [Colors.white,Colors.indigoAccent,Colors.deepPurpleAccent,Colors.teal,Colors.green];
  List Colorlist3 = [Colors.green,Colors.teal,Colors.blue,Colors.deepPurpleAccent,Colors.red];
  List Colorlist4 = [Colors.red,Colors.deepPurple,Colors.teal,Colors.lightBlue,Colors.amber];
  List Colorlist5 = [Colors.orange,Colors.amber,Colors.black,Colors.lightBlue,Colors.teal];

  int randomList1 = 0;
  int randomList2 = 0;
  int randomList3 = 0;
  int randomList4 = 0;
  int randomList5 = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Color Palette\n   Generator",style: TextStyle(color: Colors.indigo,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                height: 400,width: 100,color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      height: 80,width: 100,
                      color: Colorlist1[randomList1],
                    ),
                    Container(
                      height: 80,width: 100,
                      color: Colorlist2[randomList2],
                    ),
                    Container(
                      height: 80,width: 100,
                      color: Colorlist3[randomList3],
                    ),
                    Container(
                      height: 80,width: 100,
                      color: Colorlist4[randomList4],
                    ),
                    Container(
                      height: 80,width: 100,
                      color: Colorlist5[randomList5],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  var rnd1 = Random();
                  var rnd2 = Random();
                  var rnd3 = Random();
                  var rnd4 = Random();
                  var rnd5 = Random();
                  setState(() {
                    randomList1 = rnd1.nextInt(5);
                    randomList2 = rnd2.nextInt(5);
                    randomList3 = rnd3.nextInt(5);
                    randomList4 = rnd4.nextInt(5);
                    randomList5 = rnd5.nextInt(5);
                  });
                },
                child: Container(
                  height: 50,width: 100,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("Generate",style: TextStyle(color: Colors.white,fontSize: 15))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
