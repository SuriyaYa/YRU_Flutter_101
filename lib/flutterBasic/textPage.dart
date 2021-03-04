import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {

  final String title;

  const TextPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TextPageState();
  }
}

class _TextPageState extends State<TextPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                '1',
                style: TextStyle(fontSize: 200),
              ),
              Text(
                '2',
                style: TextStyle(fontSize: 150, color: Colors.yellow, fontWeight: FontWeight.bold),
              ),
              Text(
                '3',
                style: TextStyle(fontSize: 100, color: Colors.green ),
              ),
              Text(
                '4',
                style: TextStyle(fontSize: 50, color: Colors.red),
              ),
            ],
          ),
      ),
    );
  }


}

