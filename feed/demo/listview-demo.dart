import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/Post.dart';

class FeedList extends StatefulWidget {

   FeedList({Key? key}) : super(key: key);

   late  String title ;

   void setTitle(String title ){
     this.title = title;
   }



  @override
  _FeedListState createState() => _FeedListState();
}

class _FeedListState extends State<FeedList> {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(width: 200,height: 1),
          Text(post[index].title ?? "" , style: TextStyle(
            fontSize: 16
          ),),

          Image.network(post[index].imageUrl ?? ""),
          //SizedBox(height: 16.0),
          // Text(
          //   post[index].title ?? "",
          //   style: Theme.of(context).textTheme.subtitle2,,
          // ),
          // Text(
          //   post[index].author ?? "",
          //   style: Theme.of(context).textTheme.subtitle1,
          // ),
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.only(),
            child: Row(
                children: [
                  Text(post[index].author ?? "" ,  style: Theme.of(context).textTheme.subtitle2,),
                  SizedBox(width: 16.0),
                  Text(post[index].commontCount??  ""  ,  style: Theme.of(context).textTheme.subtitle2, ),
                  SizedBox(width: 16.0),
                  Text(post[index].time ?? ""  ,  style: Theme.of(context).textTheme.subtitle2,)
                ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: post.length,
      itemBuilder: _listItemBuilder,

    );
  }
}
