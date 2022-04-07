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
    return  Drawer(
      child: ListView(
        padding:EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //     child: Text("Header".toLowerCase()),
          //   decoration: BoxDecoration(color: Colors.grey[100]),
          //
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("用户：高琪",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("邮箱：liqudeni@126.com",
              style: TextStyle(fontWeight: FontWeight.bold),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://pic155.huitu.com/res/20210104/163347_20210104143835817060_1.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image:  NetworkImage('https://pic173.huitu.com/res/20211115/3007076_20211115092837126070_1.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.yellow, BlendMode.hardLight),
                )
            ),
          ),
          ListTile(
            title: Text("Messages",textAlign: TextAlign.right),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text("Favorite",textAlign: TextAlign.right),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22,),
            onTap: () => Navigator.pop(context),
          ),   ListTile(
            title: Text("Settings",textAlign: TextAlign.right),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22,),
            onTap: () => Navigator.pop(context),
          ),

        ],
      ),
    );
  }
}

class _StatusPageLayoutDelegate extends MultiChildLayoutDelegate {
  static const String actionBar = 'action_bar';
  static const String body = 'body';

  @override
  void performLayout(Size size) {//布局
    //布局actionbar
    Size actionBarSize = layoutChild(actionBar,
        new BoxConstraints(maxHeight: size.height, maxWidth: size.width));
    //offset（0，0），放在顶部
    positionChild(actionBar, Offset(0.0, 0.0));
    //布局body，约束为剩下的空间
    layoutChild(body, BoxConstraints.tight(Size(size.width, size.height)));
    //offset（0，actionbar高度），排在actionbar下方
    positionChild(body, Offset(0.0, actionBarSize.height));
  }

  //是否需要重新布局
  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return false;
  }
}
