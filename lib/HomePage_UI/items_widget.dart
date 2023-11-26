import 'package:flutter/material.dart';

class MyItem extends StatelessWidget{
  const MyItem ({Key? key}) : super(key: key);

  Widget buildItem (String imagePath, String title, String subTitle){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      width: 150,
      height: 155,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset(imagePath),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(subTitle),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildItem("assets/burger.jpg", "Small Burger", "Rp. 24.000,00"),
              Padding(padding: EdgeInsets.all(5)),
              buildItem("assets/soda.jpg", "Small Soda", "Rp. 10.000,00"),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildItem("assets/burger.jpg", "Medium Burger", "Rp. 30.000,00"),
              Padding(padding: EdgeInsets.all(5)),
              buildItem("assets/soda.jpg", "Medium Soda", "Rp. 12.000,00"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildItem("assets/burger.jpg", "Big Mac Burger", "Rp. 40.000,00"),
            Padding(padding: EdgeInsets.all(5)),
            buildItem("assets/soda.jpg", "Large Soda", "Rp. 15.000,00"),
          ],
        ),
      ],
    );
  }
}

