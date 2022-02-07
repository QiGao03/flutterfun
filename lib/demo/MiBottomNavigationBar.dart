
import 'package:flutter/material.dart';

class MiBottomNavigationBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MiBottomNavigationBarState();
  }
}

class MiBottomNavigationBarState extends State<MiBottomNavigationBar>{

  int _currentIndex  = 0;
  void _onTapHandler(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      onTap: _onTapHandler,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore),label: "explore"),
        BottomNavigationBarItem(icon: Icon(Icons.history),label: "histroy"),
        BottomNavigationBarItem(icon: Icon(Icons.list),label: "list"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "my")
      ],
    );
  }

}
