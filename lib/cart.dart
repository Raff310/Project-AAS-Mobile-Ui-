import 'package:flutter/material.dart';
import 'package:starbhak_mart/navbar.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
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
                      icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.red,),
                      splashRadius: 20),
                ),
                Text(
                  "Cart",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: _buildMyCartItemList(
                "assets/burger.jpg", "Medium Burger", "Rp. 30.000,00", "2"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: _buildMyCartItemList(
                "assets/soda.jpg", "Large Soda", "Rp. 15.000,00", "1"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: _buildMyCartItemList(
                "assets/burger.jpg", "Big Mac Burger", "Rp. 40.000,00", "1"),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Ringkasan Belanja",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 180),
                    child: Text("PPN 10%"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Rp 11.500,00"),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 151),
                    child: Text("Total Belanja"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Rp 115.000,00"),
                  )
                ],
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 4,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 110),
                    child: Text(
                      "Total Pembayaran",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Rp 126.500,00"),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[700]
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "Checkout",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMyCartItemList(
      String imagePath, String title, String price, String total) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 100)]),
          child: Image.asset(imagePath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(price),
            Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ],
                  ),
                  child: Icon(Icons.remove, size: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    total,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ],
                  ),
                  child: Icon(Icons.add, size: 15),
                ),
              ],
            )
          ],
        ),
        SizedBox(width: 75),
        Icon(Icons.delete_outline, size: 30, color: Colors.red)
      ],
    );
  }
}