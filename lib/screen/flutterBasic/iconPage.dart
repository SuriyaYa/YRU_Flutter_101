import 'package:flutter/material.dart';

class IconPage extends StatefulWidget {

  final String title;

  const IconPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _IconPageState();
  }
}

class _IconPageState extends State<IconPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Icon(Icons.audiotrack,color: Colors.yellow,size: 50.0),
                SizedBox(
                  height: 20.0,
                ),
                  Icon(Icons.login,color: Colors.red,size: 50.0),
                SizedBox(
                  height: 20.0,
                ),
                Icon(Icons.mail,color: Colors.black,size: 50.0),
                SizedBox(
                  height: 20.0,
                ),
              ]
          ),
      );
    }


}

