import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('高さは4メ')),
          body: LayoutDemo()
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/3.0x/head.png', fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/3.0x/head.png', fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/3.0x/head.png', fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.asset('images/3.0x/head.png', fit: BoxFit.cover),
            ),
          ],
        )
    );
  }
}

// Row布局，均分使用Expanded
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'row widget demo',
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text('水平方向布局'),
//          ),
//          body: Row(
//            children: <Widget>[
//              RaisedButton(
//                onPressed: (){},
//                color: Colors.redAccent,
//                child: Text('red button'),
//              ),
//              Expanded(
//                  child: RaisedButton(
//                    onPressed: (){},
//                    color: Colors.yellow,
//                    child: Text('yellow button'),
//                  )
//              ),
//              Expanded(
//                child: RaisedButton(
//                  onPressed: (){},
//                  color: Colors.blue,
//                  child: Text('blue button'),
//                ),
//              )
//            ],
//          )
//      ),
//    );
//  }
//}

// column 布局
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'row widget demo',
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text('垂直方向布局'),
//          ),
//          body: Center(
//            child:Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text('flutter1'),
//                Text('flutter2'),
//                Text('flutter3'),
//              ],
//            ),
//          )
//      ),
//    );
//  }
//}


