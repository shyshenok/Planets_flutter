import 'package:flutter/material.dart';
import 'package:planets_flutter/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("treva"),
          new HomePageBody(),
        ],
      ),
    );
  }
}


class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;


  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;
    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFFCCAAEA),
              const Color(0xFF3366FF),
              const Color(0xFF00FFFF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 0.5, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
      child: new Center(
        child: new Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 36.0
            )
        ),
      ),

    );
  }
}