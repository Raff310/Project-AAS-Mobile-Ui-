import 'package:flutter/material.dart';
import 'package:starbhak_mart/cart.dart';
import 'package:starbhak_mart/databarang.dart';
import 'package:starbhak_mart/homePage.dart';

class Nav extends StatefulWidget{
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav>{

  int _currentIndex = 0;
  final List <Widget> _pages = [
    homePage(),
    Cart(),
    Databarang(),
  ];

  bool _showBottomNavbar = true;

  @override
  Widget build (BuildContext context){
    return Scaffold(

      body: _pages[_currentIndex],

      bottomNavigationBar: _showBottomNavbar
      ? Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ), 
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: ClipRRect(                                                            
          borderRadius: BorderRadius.only(                                           
          topLeft: Radius.circular(20.0),                                            
          topRight: Radius.circular(20.0),                                           
          ),  
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          elevation: 30,
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.addchart_outlined),
            label: ""
          ),
          ],
          onTap: (int index){
            setState(() {
              _currentIndex = index;
              if (index != 0){
                _showBottomNavbar = false;
              }
            });
          }
        ),
        ),
      ): null
    );
  }
}