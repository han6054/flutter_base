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
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                  image: NetworkImage('http://p6.qhimg.com/t013956587c10d9a86b.jpg'),
                  fit: BoxFit.cover
              )
          ),
          width: 300,
          height: 300,
        )
    );

  }
}
