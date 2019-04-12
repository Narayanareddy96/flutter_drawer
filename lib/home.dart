import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  Home(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("Home page"),
      ),
    );
  }
}