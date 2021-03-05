import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {

  final String title;

  const ListViewPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListViewPageState();
  }
}

class _ListViewPageState extends State<ListViewPage> {

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
                                color: Colors.black,
                                child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget> [
                                      Text('ListView() Page', style: TextStyle(fontSize: 22, color: Colors.yellow), textAlign: TextAlign.start),
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

