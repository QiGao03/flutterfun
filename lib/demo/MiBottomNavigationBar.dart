
import 'package:feed_flutter/main_page/BottomTabClick.dart';
import 'package:flutter/material.dart';

class MiBottomNavigationBar extends StatefulWidget{
  late Function(PageType type)   _bottomTabClick;

  MiBottomNavigationBar(Function(PageType type) bottomTabClick){
    this._bottomTabClick = bottomTabClick;

  }

  @override
  State<StatefulWidget> createState() {
    return MiBottomNavigationBarState(_bottomTabClick);
  }
}



class MiBottomNavigationBarState extends State<MiBottomNavigationBar>{

  late Function(PageType type)   _bottomTabClick;
  MiBottomNavigationBarState(Function(PageType type)   bottomTabClick){
    print("MiBottomNavigationBarState init !");
    this._bottomTabClick = bottomTabClick;
  }

  int _currentIndex  = 0;
  void _onTapHandler(int index){
    setState(() {
      _currentIndex = index;
      switch(_currentIndex){
        case 0:
          _bottomTabClick(PageType.Index);
          break;
        case 1:
          _bottomTabClick(PageType.Video);
          break;

        case 2:
          _bottomTabClick(PageType.Theater);
          break;

        case 3:
          _bottomTabClick(PageType.Theater);
          break;
      }

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
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow),label: "视频"),
        BottomNavigationBarItem(icon: Icon(Icons.movie),label: "放映厅"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "个人中心")
      ],
    );
  }

}
