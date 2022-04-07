
import 'package:flutter/material.dart';

import '../../demo/ViewDemo.dart';

class MinVideoHome extends StatefulWidget {
  const MinVideoHome({Key? key}) : super(key: key);

  @override
  _MovieCenterHomeState createState() => _MovieCenterHomeState();
}

class _MovieCenterHomeState extends State<MinVideoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("短视频"),

      ),
      body: ViewDemo(),
    );
  }
}
