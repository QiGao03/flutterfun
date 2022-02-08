import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 100.0
            ),
            child: Container(
              child: Container(
                color: Color.fromRGBO(3, 45, 255, 1.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AspaceRatio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 16.0/9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ));
  }
}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center ,
      children: <Widget>[
        // IconBadge(Icons.pool,size: 60),
        // IconBadge(Icons.beach_access),
        // IconBadge(Icons.airplanemode_active),
        Stack(
          alignment: Alignment.topLeft,
          children: [
            SizedBox(
              width: 200,
              height: 300,
              child: Container(
                alignment: Alignment(0.0,0.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0),
              ),
            ),
            SizedBox(
              height: 10,

            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                        colors:[
                          Color.fromRGBO(7, 102, 255, 1.0),
                          Color.fromRGBO(3, 54, 255, 1.0)
                        ]
                    )
                ),
                child: Icon(Icons.brightness_2,color: Colors.white,size: 32.0),

              ),
            ),
            Positioned(
              top: 20.0,
              child: Icon(Icons.search,color: Colors.white,size: 32.0),
            ),
            Positioned(
              top: 50.0,
              child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0),
            )
          ],
        )
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