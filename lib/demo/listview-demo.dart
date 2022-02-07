import 'package:flutter/material.dart';
import '../model/Post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(post[index].imageUrl ?? ""),
          SizedBox(height: 16.0),
          Text(
            post[index].title ?? "",
            style: Theme
                .of(context)
                .textTheme
                .subtitle2,
          ),
          Text(
            post[index].author ?? "",
            style: Theme
                .of(context)
                .textTheme
                .subtitle1,
          ),
          SizedBox(height: 16.0),

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