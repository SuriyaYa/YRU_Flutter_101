import 'package:flutter/material.dart';
import 'package:flutter_101/screen/flutterAdvanceMenu.dart';
import 'package:flutter_101/screen/flutterBasicMenu.dart';

import 'screen/dartMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YRU Flutter Demo 101',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'YRU Flutter Demo 101 '),
      // debugShowCheckedModeBanner: false, //Disable banner "DEBUG"
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              title: Card(
                color: Colors.black,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      new Container(
                          padding: new EdgeInsets.all(10.0),
                          child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget> [
                                Text('Dart Basic', style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                              ]
                          )
                      ),
                    ]
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DartMenu()
                ),
                );
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Card(
                color: Colors.black,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      new Container(
                          padding: new EdgeInsets.all(10.0),
                          child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget> [
                                Text('Flutter Basic', style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                              ]
                          )
                      ),
                    ]
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => FlutterBasicMenu()
                ),
                );
              },
            ), SizedBox(
              height: 10.0,
            ),
            ListTile(
              title: Card(
                color: Colors.black,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      new Container(
                          padding: new EdgeInsets.all(10.0),
                          child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget> [
                                Text('Flutter Advance', style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                              ]
                          )
                      ),
                    ]
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => FlutterAdvanceMenu()
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
