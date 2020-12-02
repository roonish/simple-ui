import 'package:flutter/material.dart';

const activecolor = Color(0xFF7A9BEE);
const inactivecolor = Colors.white;
enum Number { one, two, three, four }

class detail extends StatefulWidget {
  final img;
  final foodname;
  final price;
  detail(this.img, this.foodname, this.price);
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  Number selectednumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        backgroundColor: Color(0xFF7A9BEE),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Center(
          child: Text(
            'Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_basket),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75,
                child: Container(
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: (MediaQuery.of(context).size.width / 2) - 140,
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: widget.img,
                      child: Container(
                        height: 180,
                        width: 220,
                        decoration: BoxDecoration(
                          //    shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(widget.img),
                            //  fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Text(
                      widget.foodname,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '\$26.00',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 50,
                        ),
                        Container(
                          width: 1,
                          height: 40,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 40,
                          width: 50,
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                            color: Color(0xFF7A9BEE),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.remove, color: Colors.white),
                              Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xFF7A9BEE),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      height: 160,
                      width: 300,
                      color: Colors.transparent,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectednumber = Number.one;
                              });
                            },
                            child: Containers(
                              title: 'WEIGHT',
                              amount: '300',
                              unit: 'G',
                              colour: selectednumber == Number.one
                                  ? activecolor
                                  : inactivecolor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectednumber = Number.two;
                              });
                            },
                            child: Containers(
                              title: 'CALORIES',
                              amount: '267',
                              unit: 'CAL',
                              colour: selectednumber == Number.two
                                  ? activecolor
                                  : inactivecolor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectednumber = Number.three;
                              });
                            },
                            child: Containers(
                              title: 'VITAMINS',
                              amount: 'A, B6',
                              unit: 'VIT',
                              colour: selectednumber == Number.three
                                  ? activecolor
                                  : inactivecolor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectednumber = Number.four;
                              });
                            },
                            child: Containers(
                              title: 'MINERALS',
                              amount: '1000',
                              unit: 'MG',
                              colour: selectednumber == Number.four
                                  ? activecolor
                                  : inactivecolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          widget.price,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Containers extends StatelessWidget {
  Containers(
      {this.title, @required this.amount, this.unit, @required this.colour});
  final String title;
  final String amount;
  final String unit;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          width: 100,
          decoration: BoxDecoration(
            color: colour,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                  //  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                amount,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                unit,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
