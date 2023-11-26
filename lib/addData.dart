import 'package:flutter/material.dart';
import 'package:starbhak_mart/databarang.dart';
import 'package:starbhak_mart/navbar.dart';

class addData extends StatefulWidget{
    const addData ({Key? key}) : super(key: key);

  @override
  State<addData> createState() => _addDataState();
}

class _addDataState extends State<addData> {
  var _value="-1";
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
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
                          return Databarang();
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
            height: 70,
          ),
          
          Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [                                  
              TextField(decoration: const InputDecoration(
                hintText: 'Masukan Nama Produk',
                labelText: 'Nama Produk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30),),
                ),
              ),
              ),
            ],
          ),
          ),     
          SizedBox(
            height: 25,
          ),

          Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [                          
              TextField(decoration: const InputDecoration(
                hintText: 'Masukan Harga',
                labelText: 'Harga',                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30),),
                ),
              ),),],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          DropdownButtonFormField(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: InputDecoration(
              labelText: 'Kategori Produk',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
            ),
            value: _value,
            items: [                       
              DropdownMenuItem(child: Text("Makanan"), value: "-1",),
              DropdownMenuItem(child: Text("Minuman"), value: "1",),
            ], onChanged: ((value) {
              
            }),      
          ),
          SizedBox(
            height: 25,
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [                                   
              TextField(decoration: const InputDecoration(
                hintText: 'Choose File',
                border: OutlineInputBorder(
                  borderRadius:
                   BorderRadius.horizontal(
                    left: Radius.circular(30),
                    right: Radius.circular(30),),
                ),
              ),
              ),
            ],
          ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[700]),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}