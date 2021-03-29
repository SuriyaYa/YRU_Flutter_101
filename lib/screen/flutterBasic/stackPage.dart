import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {

  final String title;

  const StackPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StackPageState();
  }
}

class _StackPageState extends State<StackPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.all(16.0),
          child: Stack(
            children: <Widget>[

              Text(
                '2',
                style: TextStyle(fontSize: 150, color: Colors.yellow),
              ),
              Text(
                '3',
                style: TextStyle(fontSize: 100, color: Colors.green),
              ),
              Text(
                '4',
                style: TextStyle(fontSize: 50, color: Colors.red),
              ),
              Text(
                '1',
                style: TextStyle(fontSize: 200),
              ),
            ],
          ),
      ),
    );
  }


}

