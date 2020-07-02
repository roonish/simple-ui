import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.arrow_back, color: Colors.white),
                    trailing: Container(
                      width: 100,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.menu, color: Colors.white),
                          Icon(Icons.search, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Healthy',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Food',
                        style: TextStyle(
                          color: Colors.white70,
                          // fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 35),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 514,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  //   topRight: Radius.circular(60),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Listdata(
                    img: '',
                    foodname: 'Mo:Mo',
                    price: '\$23.00',
                  ),
                  Listdata(
                    img: '',
                    foodname: 'Pizza',
                    price: '\$22.00',
                  ),
                  Listdata(
                    img: '',
                    foodname: 'Chawmin',
                    price: '\$62.00',
                  ),
                  Listdata(
                    img: '',
                    foodname: 'Thukpa',
                    price: '\$78.00',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Listdata extends StatelessWidget {
  Listdata({this.img, @required this.foodname, this.price});
  final String img;
  final String foodname;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: Image(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      foodname,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.add, color: Colors.black),
        ],
      ),
    );
  }
}
