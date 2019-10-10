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
          child: ClipOval(
//          child: Image.asset('images/3.0x/head.png', // 引入本地图片
            child: Image.network('http://p6.qhimg.com/t013956587c10d9a86b.jpg', // 引入远程图片
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        )
    );

  }
}