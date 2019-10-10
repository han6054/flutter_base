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
    return ListView(
      padding: EdgeInsets.all(20.0),
      children: <Widget>[
        ListTile(
          leading: Image.asset(
            'images/3.0x/head.png',
            width: 100,
            height: 100,
          ),
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.yellow,
          ),
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text('一级标题'),
          subtitle: Text('二级标题'),
        )
      ],

    );
  }
}
