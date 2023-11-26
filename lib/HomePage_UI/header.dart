import 'package:flutter/material.dart';
import 'package:starbhak_mart/navbar.dart';

class myHeader extends StatelessWidget {
  const myHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildIconButton(Icons.menu),
              buildIconButton(Icons.person_2_outlined),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildCategory("All", "assets/burger.jpg"),
            buildCategory("Foods", "assets/burger.jpg"),
            buildCategory("Drinks", "assets/soda.jpg"),
          ],
        ),
      ],
    );
  }

  Widget buildIconButton(IconData icon){
    return Material(
      borderRadius: BorderRadius.circular(30),
      elevation: 15,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon),
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String label, String imagePath) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagePath),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
