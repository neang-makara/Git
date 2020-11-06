import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffold,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: Icon(Icons.add),
                actions: [Icon(Icons.favorite)],
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      "Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    background: Image.asset(
                      'Assets/Images/ShirtShop.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Center(
            child: Column(
              children: <Widget>[
                Center(child: Text("Test"),)
              ],
            )
          ),
        ),
      ),
    );
  }
}
