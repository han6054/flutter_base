import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
*  flutter 引入图片
* */
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
          child: Image.network('http://p6.qhimg.com/t013956587c10d9a86b.jpg',
            height: 200.0,
            width: 100.0, color: Colors.yellow,
            colorBlendMode: BlendMode.screen,
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeatX,
          ),
          height: 300.0,
          width: 300.0,
        )
    );

  }
}
