import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: NetworkImage('http://p6.qhimg.com/t013956587c10d9a86b.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color:Colors.lightBlue,
          ),
          padding: EdgeInsets.all(10.0),
          child: Text('flutter'),
        )
      ],
    );
    return MaterialApp(
      title: 'row widget demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('CircleAvatar'),
          ),
          body: Center(
            child: stack,
          )
      ),
    );
  }
}

// 也可以使用Positioned组件进行布局

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var stack = new Stack(
//      children: <Widget>[
//        new CircleAvatar(
//          backgroundImage: NetworkImage('http://p6.qhimg.com/t013956587c10d9a86b.jpg'),
//          radius: 100.0,
//        ),
//        new Positioned(
//            top: 10.0,
//            left: 60.0,
//            child: Text(
//              'flutter1',
//              style: TextStyle(color: Colors.yellow, fontSize: 30.0),
//            )
//        ),
//        new Positioned(
//            bottom: 10.0,
//            right: 10.0,
//            child: Text('flutter2'))
//      ],
//    );
//    return MaterialApp(
//      title: 'row widget demo',
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text('CircleAvatar'),
//          ),
//          body: Center(
//            child: stack,
//          )
//      ),
//    );
//  }
//}