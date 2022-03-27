import 'dart:ffi';

import 'package:feed_flutter/demo/BasicDemo.dart';
import 'package:feed_flutter/demo/Milayout.dart';
import 'package:feed_flutter/demo/SliverMi.dart';
import 'package:feed_flutter/demo/listview-demo.dart';
import 'package:feed_flutter/feed/IndexHome/IndexModel.dart';
import 'package:flutter/material.dart';


class IndexHome extends StatefulWidget {
  const IndexHome({Key? key}) : super(key: key);

  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {

  late var data = IndexModel.indexTitle.toList() ;

  late List<Widget> tabs = [] ;

  List<Widget> getTabs(){
    if (tabs.isEmpty){
      List dataSet = IndexModel.indexTitle.toList();
      for(int i=0 ;i< dataSet.length;i++){
        var tab = Tab(child: Container(child: Text(dataSet[i])),) ;
        tabs.add(tab);
      }
    }
    return tabs;
  }

  List<StatefulWidget> feedTabBarViews = [];

  List<Widget> getFeedTabBarViews(){
    if (feedTabBarViews.isEmpty){
      List dataSet = IndexModel.indexTitle.toList();
      for(int i=0 ;i< dataSet.length;i++){
        var item = FeedList();
        item.setTitle(dataSet[i]);
        feedTabBarViews.add(item);
      }
    }
    return feedTabBarViews;
  }


  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return new DefaultTabController(length: data.length, child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
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
            tabs: getTabs(),
            padding: EdgeInsets.zero,
            isScrollable: true,
          ),
        ),

      body: TabBarView(
        children: getFeedTabBarViews(),
      ),


    ));
  }
}
