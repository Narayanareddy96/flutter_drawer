import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  final String title;
  Orders(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text("Orders page"),
      ),
    );
  }
}