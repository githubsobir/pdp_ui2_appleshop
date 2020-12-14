import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _list = [
    'assets/images/products_1.png',
    'assets/images/products_2.jpg',
    'assets/images/products_3.png',
    'assets/images/products_4.png',
    'assets/images/products_5.jpg',
    'assets/images/products_6.jpg',
    'assets/images/products_7.jpeg',
    'assets/images/products_8.jpg',
    'assets/images/products_9.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //#appBar
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange),
              child: Center(
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
        title: Text(
          'Apple Products',
          style: TextStyle(color: Colors.grey[200]),
        ),
        centerTitle: true,
      ),
      //  #body
      body: Container(
        color: Colors.deepOrange,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // #header
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/products_9.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.white54.withOpacity(0.4),
                      Colors.white54.withOpacity(0.1),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lifestyle sale',
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'Shop Now',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // #body
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: _list.map((item) => callList(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget callList(String items) {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    child: Container(
      height: 300,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(items), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageIcon(
            AssetImage('assets/images/like.png'),
            color: Colors.red,
            size: 40,
          )
        ],
      ),
    ),
  );
}
