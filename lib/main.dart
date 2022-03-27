import 'package:feed_flutter/demo/BasicDemo.dart';
import 'package:feed_flutter/demo/SliverMi.dart';
import 'package:feed_flutter/demo/drawer_demo.dart';
import 'package:feed_flutter/feed/controllers/HomeTabController.dart';
import 'package:feed_flutter/main_page/BottomTabClick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'demo/ViewDemo.dart';
import 'demo/listview-demo.dart';
import 'demo/MiBottomNavigationBar.dart';
import 'demo/Milayout.dart';

void main() {
  runApp(
    App()
  );
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}




