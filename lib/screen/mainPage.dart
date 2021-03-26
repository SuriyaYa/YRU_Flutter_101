import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // title: Text('mainpage'.tr),
      ),
      body: new Container(
        // decoration: BackgroundYRU.decorationApp(),
        padding: new EdgeInsets.all(16.0),
        child: ListView(
          // padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          children: <Widget>[
            Card(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    new Container(
                        padding: new EdgeInsets.all(10.0),
                        child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [ //Padding between these please
//                                new Text("I love Flutter", style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//                                Icon(Icons.favorite, color: Colors.amber, size: 50.0),
                              Text('contact_app_1'.tr, style: TextStyle(fontSize: 22), textAlign: TextAlign.start),
                              SizedBox(height: 10),
                              Text('contact_app_2'.tr, style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
                            ]
                        )
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}