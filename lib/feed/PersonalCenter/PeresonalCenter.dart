import 'package:feed_flutter/demo/BasicDemo.dart';
import 'package:feed_flutter/demo/Milayout.dart';
import 'package:feed_flutter/demo/SliverMi.dart';
import 'package:flutter/material.dart';

class MySelfHome extends StatefulWidget {
  const MySelfHome({Key? key}) : super(key: key);

  @override
  _MySelfHomeState createState() => _MySelfHomeState();
}

class _MySelfHomeState extends State<MySelfHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
      ),
      body: Container(
        child: BasicDemo(),
      ),
    );
  }
}
