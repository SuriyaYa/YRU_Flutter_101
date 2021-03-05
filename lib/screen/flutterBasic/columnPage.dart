import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {

  final String title;

  const ColumnPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ColumnPageState();
  }
}

class _ColumnPageState extends State<ColumnPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.green,
            width: 150.0,
            height: 100.0,
          ),
          Container(
            color: Colors.blue,
            width: 200.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }


}

