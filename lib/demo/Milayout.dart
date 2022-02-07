import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconBadge(Icons.pool,size: 60),
        IconBadge(Icons.search,size: 60),
        IconBadge(Icons.explore,size: 60),
      ],
    );
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;
  IconBadge(this.icon ,{this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size: this.size,color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}