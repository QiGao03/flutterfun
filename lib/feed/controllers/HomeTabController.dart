import 'package:feed_flutter/demo/MiBottomNavigationBar.dart';
import 'package:feed_flutter/feed/IndexHome/IndexHome.dart';
import 'package:feed_flutter/feed/movieCenter/MovieCenter.dart';
import 'package:feed_flutter/feed/video/MinVideo.dart';
import 'package:feed_flutter/main.dart';
import 'package:flutter/material.dart';

import '../PersonalCenter/PeresonalCenter.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}



class _HomeWidgetState extends State<HomeWidget> {



  @override
  Widget build(BuildContext context) {

    return DefaultTabController(length: 4, child:
    Scaffold(
      body:TabBarView(
        children: [
          IndexHome(),
          MinVideoHome(),
          MovieCenterHome(),
          MySelfHome(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          Tab(icon:Icon(Icons.home),text: "首页"),
          Tab(icon:Icon(Icons.video_label),text: "视频"),
          Tab(icon:Icon(Icons.play_circle),text: "放映亭"),
          Tab(icon:Icon(Icons.people),text: "个人中心")
        ],
      ),
    ),animationDuration: Duration());


   //  var tabController =  DefaultTabController(length: 4,
   //      child: TabBarView(
   //    children: [
   //      IndexHome(),
   //      MovieCenterHome(),
   //      MinVideoHome(),
   //      MySelfHome()
   //    ],
   //  ),
   //
   //
   //  );
   //
   // return tabController;
  }
}
