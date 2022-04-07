import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feed_flutter/model/Post.dart';
class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MiGridViewBuilder();
  }
}

class MiGridViewBuilder extends StatelessWidget{

  Widget _itemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        post[index].imageUrl??"",
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: post.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0
        ),
        itemBuilder: _itemBuilder);
  }
}

class MiGridView extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (index){
     return  Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0,0.0),
        child: Text(" Item " '$index',style: TextStyle(color: Colors.black,fontSize:18.0),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    crossAxisSpacing: 16.0,
    mainAxisSpacing: 16.0,
    scrollDirection: Axis.horizontal,
    children: _buildTiles(100));
  }
}

class PageViewBuilder extends StatelessWidget{

  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: [
        SizedBox.expand(
          child:Image.network(
              post[index].imageUrl ??"",
              fit: BoxFit.cover),
        ),

        Positioned(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(post[index].title ?? "",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 32.0,color: Colors.white)),
                Text(post[index].author ?? "",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32.0)),
              ],
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: post.length,
      itemBuilder: _pageItemBuilder,
      scrollDirection: Axis.vertical,
    );
  }
}

class MiPageView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PageView(
      //pageSnapping: false,
      // reverse: true,
      onPageChanged: (currentPage)=>debugPrint('page $currentPage'),
      scrollDirection: Axis.vertical,
      controller: PageController(
          initialPage: 1,
          keepPage: false,
          viewportFraction: 0.8
      ),

      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'one',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white
            ),
          ),
        ),

        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'two',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white
            ),
          ),
        ),

        Container(
          color: Colors.blue[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'three',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
