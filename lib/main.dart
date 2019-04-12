import 'package:drawer_example/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new _HomePage(),
      routes: <String,WidgetBuilder>{
        "home":(BuildContext context)=> new Home("Home"),
        "Orders":(BuildContext context)=> new Home("Orders"),
      },
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => __HomePageState();
}

class __HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.5 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Narayana Reddy"),
              accountEmail: new Text("Test@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("N"),
              ),
            ),
            new ListTile(
              onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("home");
              },
              title: new Text("Home"),
              trailing: Icon(Icons.home),
              
            ),
            new ListTile(
              onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("Orders");
              },
              title: new Text("Orders"),
              trailing: Icon(Icons.record_voice_over),
            ),
            new Divider(
              height: 1.1,
              color: Colors.black,
            ),
            new ListTile(
              onTap: ()=> Navigator.of(context).pop(),
              title: new Text("Close"),
              trailing: Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: new Text("Main page"),
        )
      ),
    );
  }
}
