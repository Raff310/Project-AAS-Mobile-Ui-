import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:starbhak_mart/addData.dart';
import 'package:starbhak_mart/homePage.dart';
import 'package:starbhak_mart/navbar.dart';

class Databarang extends StatelessWidget {
  Databarang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Nav();
                        }));
                      },
                      icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.orange,),
                      splashRadius: 20),
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_2_outlined),
                      splashRadius: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 20,
                child: Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[700]),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return addData();
                      }));
                    },
                    child: Text(
                      "Add Data +",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Foto",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Nama Produk",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Harga",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Aksi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 3,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    _buildMyAddItemList("assets/burger.jpg", "Medium Burger", "Rp. 30.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/soda.jpg", "Small Soda", "Rp. 10.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/burger.jpg", "Big Mac Burger", "Rp. 40.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/burger.jpg", "Small Burger", "Rp. 20.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/soda.jpg", "Medium Soda", "Rp. 12.000,00"),
                    Divider(indent: 20, endIndent: 20, thickness: 3,),
                    _buildMyAddItemList("assets/soda.jpg", "Large Soda", "Rp. 15.000,00"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMyAddItemList(
      String imagePath, String productName, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: 75, height: 75,),
          Text(productName),
          Text(price),
          Icon(Icons.delete_outline, color: Colors.red,)
        ],
      ),
    );
  }
}