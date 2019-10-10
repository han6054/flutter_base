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
          body: LayoutDemo()
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {

  List<Widget> _getListData() {
    List<Widget> list = List();

    for(var i=0;i<9;i++) {
      list.add(Container(
          alignment: Alignment.center,
          child: Text(
              'Text$i条数据',
              style: TextStyle(
                  color: Colors.white
              )
          ),
          color: Colors.blue
      ));
    }
    return list.toList();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisSpacing: 20, // 水平元素之间的距离
        mainAxisSpacing: 20, // 垂直元素之间的距离
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        childAspectRatio: 0.9, // 宽度和高度的比例
        children: _getListData()
    );
  }
}

//class MyApp extends StatelessWidget {
//  final List<String> items;
//  MyApp({Key key, @required this.items}):super(key:key);
//  @override
//  Widget build(BuildContext context ){
//    return MaterialApp(
//      title:'ListView widget',
//      home:Scaffold(
//          body: GridView.count(
//            padding: const EdgeInsets.all(20.0),
//            crossAxisSpacing: 10.0,
//            crossAxisCount: 3,
//            children: <Widget>[
//              const Text('flutter1'),
//              const Text('flutter2'),
//              const Text('flutter3'),
//              const Text('flutter1'),
//              const Text('flutter2'),
//              const Text('flutter3'),
//            ],
//          )
//      ),
//    );
//  }
//}
