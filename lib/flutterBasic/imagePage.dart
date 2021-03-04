import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {

  final String title;

  const ImagePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ImagePageState();
  }
}

class _ImagePageState extends State<ImagePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
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
                                    children: <Widget> [
                                      Text('ImagePage', style: TextStyle(fontSize: 22), textAlign: TextAlign.start),
                                      SizedBox(height: 10),
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

