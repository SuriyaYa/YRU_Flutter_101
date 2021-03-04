import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {

  final String title;

  const RowPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RowPageState();
  }
}

class _RowPageState extends State<RowPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.green,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.blue,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }


}

