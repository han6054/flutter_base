import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
              title: Text('中国科学院大学', style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('中关村校区'),
              leading: new Icon(Icons.account_box,color: Colors.lightBlue,)
          ),
          ListTile(
              title: Text('北京海淀区门店', style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('中关村校区'),
              leading: new Icon(Icons.access_alarm,color: Colors.lightBlue,)
          ),
          ListTile(
              title: Text('新疆克拉玛依门店', style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('中关村校区'),
              leading: new Icon(Icons.account_box,color: Colors.lightBlue,)
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'row widget demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('carWidget'),
          ),
          body: Center(
            child: card,
          )
      ),
    );
  }
}