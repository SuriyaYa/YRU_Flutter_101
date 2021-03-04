import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {

  final String title;

  const ExpandedPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExpandedPageState();
  }
}

class _ExpandedPageState extends State<ExpandedPage> {

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
              Expanded(
                child: Container(
                    color: Colors.red),
                flex: 1,
              ),
              Expanded(
                child: Container(color: Colors.green),
                flex: 1,
              ),
              Expanded(
                child: Container(color: Colors.blue),
                flex: 1,
              ),
            ],
          ),
          // child: Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: Container(
          //           color: Colors.red),
          //       flex: 1,
          //     ),
          //     Expanded(
          //       child: Container(color: Colors.green),
          //       flex: 1,
          //     ),
          //     Expanded(
          //       child: Container(color: Colors.blue),
          //       flex: 1,
          //     ),
          //   ],
          // ),

      ),
    );
  }


}

