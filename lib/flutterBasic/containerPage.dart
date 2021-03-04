import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {

  final String title;

  const ContainerPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ContainerPageState();
  }
}

class _ContainerPageState extends State<ContainerPage> {

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
            width: 200.0,
            height: 100.0,
          ),
          Container(
            color: Colors.blue,
            width: 300.0,
            height: 300.0,
          ),
          Expanded(child: Container(
            color: Colors.yellow,
          ),)

        ],
      ),

    );
  }


}

