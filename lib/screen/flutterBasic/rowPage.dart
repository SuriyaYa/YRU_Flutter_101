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
      body: Center(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 40.0,
                height: 300.0,
              ),
              Container(
                color: Colors.green,
                width: 40.0,
                height: 300.0,
              ),
              Container(
                color: Colors.blue,
                width: 40.0,
                height: 300.0,
              ),
              Container(
                color: Colors.orange,
                width: 40.0,
                height: 300.0,
              ),
              Container(
                color: Colors.green,
                width: 40.0,
                height: 300.0,
              ),
              Container(
                color: Colors.blue,
                width: 40.0,
                height: 300.0,
              ),
              Container(
                color: Colors.orange,
                width: 40.0,
                height: 300.0,
              ),
            ],
          ),
        ],
      ),
      ),
      // body: widgetExam(),

    );
  }



  // @override
  // Widget build(BuildContext context) {
  //
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               color: Colors.red,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //             Container(
  //               color: Colors.green,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //             Container(
  //               color: Colors.blue,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //             Container(
  //               color: Colors.white,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //             Container(
  //               color: Colors.orange,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //             Container(
  //               color: Colors.pink,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //             Container(
  //               color: Colors.black,
  //               width: 30.0,
  //               height: 200.0,
  //             ),
  //           ],
  //         ),
  //     ),
  //
  //   );
  // }



}

