import 'package:feed_flutter/model/Post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("nihao"),
            floating: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("nihao flutter",style: TextStyle(
                fontSize: 15.0,fontWeight: FontWeight.w400,letterSpacing: 3.0
              ),),
              background: Image.network(
                  "https://pic170.huitu.com/res/20210930/3007076_20210930095530435060_1.jpg",
              fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
          ))
        ],
      ),
    );
  }
}

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
        (BuildContext context,int index){
          return Padding(padding: EdgeInsets.all(32.0),
          child: Material(
            borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey[100],
              child: Stack(
                children: [
                  AspectRatio(aspectRatio: 16/9,
                    child: Image.network(post[index].imageUrl ?? ""),
                  )
                ],
              ),
          ),);
        },
        childCount: post.length,
    ));
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.only(
              bottom: 32.0,
            ),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey[100],
              child:  Stack(
                children:<Widget> [
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Container(

                      child: Image.network(
                        post[index].imageUrl ?? "",
                        fit: BoxFit.cover,
                      ),
                    ),


                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(post[index].author ?? "",
                          style: TextStyle(fontSize: 20.0,color: Colors.white),),
                        Text(post[index].title ?? "",
                          style: TextStyle(fontSize: 20.0,color:Colors.white),),
                      ],
                    ),
                  )
                ],
              ),
            ));
      },
      childCount: post.length,
    ));
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              child: Image.network(
                post[index].imageUrl ?? "",
                fit: BoxFit.cover,
              ),
            );
          },
          childCount: post.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.0));
  }
}
