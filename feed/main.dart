import 'package:feed_flutter/feed/controllers/HomeTabController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed/detail/DetailPage.dart';

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

      routes: {
        "video_detail" :(context)=>VideoDetailPage()
      },
    );
  }
}




