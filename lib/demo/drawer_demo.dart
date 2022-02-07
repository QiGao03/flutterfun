import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
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