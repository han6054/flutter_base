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
    return IconContainer();
  }
}
class IconContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
      child: Center(
        child: Icon(Icons.home, size: 32.0, color: Colors.white)
      ),
    );
  }
}
