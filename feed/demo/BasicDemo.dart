import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://pic144.huitu.com/res/20200611/1779091_20200611124625782060_1.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent,
              BlendMode.hardLight),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Container(
            child:Icon(Icons.pool,size: 32.0,color: Colors.white) ,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(20.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                  color: Colors.indigoAccent,
                  width: 10.0,
                  style: BorderStyle.solid
              ),
              boxShadow:[
                BoxShadow(
                  offset: Offset(0.0,6.0),
                  color: Color.fromRGBO(16, 20, 100, 1.0),
                  blurRadius: 1.0,
                  spreadRadius: -9.0,
                )
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 1208, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,

              )
            ),
          )
        ]

      ),
    );
  }
}

class TextDemo extends StatelessWidget{

  final TextStyle _textStyle = TextStyle(
      fontSize: 16.0
  );
  final String _author = "李白";
  final String _title = "将进酒";
  @override
  Widget build(BuildContext context) {
    return Text('$_title -----$_author '   "君不见，黄河之水天上来，奔流到海不复回。 　　君不见，高堂明镜悲白发，朝如青丝暮成雪！ 　　人生得意须尽欢，莫使金樽空对月。 　　天生我材必有用，千金散尽还复来。 　　烹羊宰牛且为乐，会须一饮三百杯。 　　岑夫子，丹丘生，将进酒，杯莫停。 　　与君歌一曲，请君",
    textAlign: TextAlign.center,
      style: _textStyle,
    );
  }
}

class RichTextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return RichText(text: TextSpan(
         text: 'nihao',
         style: TextStyle(
           color: Colors.deepPurple,
           fontSize: 34.0,
           fontStyle: FontStyle.italic,
           fontWeight: FontWeight.w100,
         ),
         children: [
           TextSpan(
             text: '.net',
             style: TextStyle(
                 fontSize: 16.0,
                 fontWeight: FontWeight.w700,
                 fontStyle: FontStyle.normal
             ),
           ),

           TextSpan(
               text: 'bg'
           )
         ]

     ));
  }
}