import 'package:flutter/material.dart';
import 'package:starbhak_mart/HomePage_UI/header.dart';
import 'package:starbhak_mart/homePage_UI/items_widget.dart';

class homePage extends StatefulWidget{
  const homePage ({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<homePage>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          myHeader(),

          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 5, right: 250),
            child: Text(
              "All Menu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: MyItem(),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}