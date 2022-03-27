import 'package:feed_flutter/demo/BasicDemo.dart';
import 'package:feed_flutter/main.dart';
import 'package:flutter/material.dart';

import '../../demo/Milayout.dart';
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
      appBar: AppBar(title: Text("放映亭"),),
      body: LayoutDemo(),
    );
  }
}
