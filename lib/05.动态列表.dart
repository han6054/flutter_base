import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items:List<String>.generate(1000, (i)=> 'item $i')
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:
          AppBar(title: Text('flutter List')),
          body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  title:new Text('${items[index]}'),
                );
              }
          )
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }
}

//class HomeContent extends StatelessWidget {
//
//  List<Widget> _getData() {
//    List<Widget> list = List();
//    for(var i=0;i<10;i++) {
//      list.add(ListTile(
//          title: Text('i am list$i')
//      ));
//    }
//    return list;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//        children: this._getData()
//    );
//  }
//}
