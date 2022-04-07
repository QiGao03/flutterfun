import 'package:feed_flutter/demo/BasicDemo.dart';
import 'package:feed_flutter/main.dart';
import 'package:flutter/material.dart';

import '../../demo/Milayout.dart';
import '../../demo/SliverMi.dart';
import '../../demo/ViewDemo.dart';

class MovieCenterHome extends StatefulWidget {

  const MovieCenterHome({Key? key}) : super(key: key);

  @override
  _MovieCenterHomeState createState() => _MovieCenterHomeState();
}

class _MovieCenterHomeState extends State<MovieCenterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("nihao"),
            floating: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("nihao flutter",style: TextStyle(
                  fontSize: 15.0,fontWeight: FontWeight.w400,letterSpacing: 3.0
              ),),
              background: Image.network(
                "https://pic170.huitu.com/res/20210930/3007076_20210930095530435060_1.jpg",
                fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
          ))
        ],
      ),
    );
  }
}
