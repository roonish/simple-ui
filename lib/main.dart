import 'package:flutter/material.dart';
import 'secondpage.dart';

import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:swipedetector/swipedetector.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

FSBStatus status;

class _MyappState extends State<Myapp> {
  FSBStatus status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: SwipeDetector(
        onSwipeLeft: () {
          setState(() {
            status = FSBStatus.FSB_CLOSE;
          });
        },
        onSwipeRight: () {
          setState(() {
            status = FSBStatus.FSB_OPEN;
          });
        },
        child: FoldableSidebarBuilder(
          drawerBackgroundColor: Color(0xFF21BFBD),
          drawer: Drawer(),
          screenContents: Screen(),
          status: status,
        ),
      ),
    );
  }
}

class Drawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 20, 0),
        //  height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     topRight: Radius.circular(40), bottomRight: Radius.circular(40)),
          color: Color(0xFF7A9BEE),
        ),
        //       color: Colors.grey
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    'images/a.png',
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.lightbulb_outline), onPressed: () {})
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Ronish ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 2,
                    textBaseline: TextBaseline.alphabetic,
                    decoration: TextDecoration.none,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    ),
                    onPressed: () {})
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '+977 9808098003 ',
              style: TextStyle(
                fontSize: 15,
                //   fontWeight: FontWeight.bold,
                color: Colors.black,
                // letterSpacing: 2,
                decoration: TextDecoration.none,
                //   textBaseline: TextBaseline.alphabetic,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Rows(icon: Icon(Icons.call), text: 'Calls'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
            Rows(icon: Icon(Icons.contact_phone), text: 'Contacts'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
            Rows(icon: Icon(Icons.message), text: 'Message'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
            Rows(icon: Icon(Icons.games), text: 'Games'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
            Rows(icon: Icon(Icons.music_note), text: 'Music'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
            Rows(icon: Icon(Icons.settings), text: 'Setting'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
            Rows(icon: Icon(Icons.exit_to_app), text: 'Exit'),
            SizedBox(
              height: 30,
              child: Divider(
                thickness: 1.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Rows extends StatelessWidget {
  Rows({this.icon, this.text});
  final Icon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(icon: icon, iconSize: 20, onPressed: () {}),
        SizedBox(
          width: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ],
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      status = status == FSBStatus.FSB_OPEN
                          ? FSBStatus.FSB_CLOSE
                          : FSBStatus.FSB_OPEN;
                    },
                  ),
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
        SizedBox(height: 25),
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.682,
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
                  img: 'images/a.png',
                  foodname: 'Mo:Mo',
                  price: ' \$23.00',
                ),
                Listdata(
                  img: 'images/b.png',
                  foodname: 'Pizza',
                  price: '    \$22.00',
                ),
                Listdata(
                  img: 'images/c.png',
                  foodname: 'Chawmin',
                  price: '\$62.00',
                ),
                Listdata(
                  img: 'images/d.png',
                  foodname: 'Noodle',
                  price: ' \$78.00',
                ),
              ],
            ),
          ),
        ),
      ],
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
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => detail(img, foodname, price),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: Hero(
                      tag: img,
                      child: Image(
                        image: AssetImage(img),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
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
                          fontSize: 15,
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
      ),
    );
  }
}
