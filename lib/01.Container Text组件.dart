import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:
          AppBar(title: Text('高さは4メ')),
          body: HomeContent()
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Text('Container！',
            textAlign: TextAlign.right, // 右对齐
            textDirection: TextDirection.ltr,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 2, //缩放
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.greenAccent,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic, // 斜体
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.pinkAccent,
                decorationStyle: TextDecorationStyle.dashed,
                letterSpacing: 5.0
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
//              Radius.circular(150)
                  Radius.circular(10)
              )
          ),
          padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
          alignment: Alignment.bottomLeft,
//          transform: Matrix4.translationValues(100, 0, 0),
//          transform: Matrix4.rotationZ(0.3),
          width: 300,
          height: 300,
        )
    );

  }
}
