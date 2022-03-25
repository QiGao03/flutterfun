

import 'package:flutter/material.dart';

import '../../demo/BasicDemo.dart';
import '../../demo/MiBottomNavigationBar.dart';
import '../../demo/Milayout.dart';
import '../../demo/SliverMi.dart';
import '../../demo/drawer_demo.dart';
import '../../demo/listview-demo.dart';
import '../../main_page/BottomTabClick.dart';

class HomeTabController extends StatefulWidget {

  @override
  _HomeTabControllerState createState() => _HomeTabControllerState();
}

class _HomeTabControllerState extends State<HomeTabController> {



  var mStatefulWidget = DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(

          title: Text('智闻'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: ()=>debugPrint('Search button is pressed.'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor : Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.change_history,size: 128.0,color: Colors.black),
            BasicDemo(),
            LayoutDemo(),
            MiSliver()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: MiBottomNavigationBar((pageType)=>{
          print("click")
        }),
      ));

  @override
  Widget build(BuildContext context) {
     return mStatefulWidget;
  }


}



