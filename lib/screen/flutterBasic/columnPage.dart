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
      body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.0,),
          Container(
            color: Colors.black,
            width: 200.0,
            height: 50.0,
          ),
          Container(
            color: Colors.green,
            width: 150.0,
            height: 50.0,
          ),
          Container(
            color: Colors.blue,
            width: 200.0,
            height: 50.0,
          ),
          Container(
            color: Colors.pinkAccent,
            width: 200.0,
            height: 50.0,
          ),
          Container(
            color: Colors.orange,
            width: 200.0,
            height: 50.0,
          ),
          SizedBox(height: 50.0,),
          Text('*อยากให้แสดงรูปธงชาติไทย',style: TextStyle(fontSize: 25,color: Colors.red)),
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
  //     child: Column(
  //       children: [
  //         SizedBox(height: 50.0,),
  //         Container(
  //           color: Colors.red,
  //           width: 300.0,
  //           height: 30.0,
  //         ),
  //         Container(
  //           color: Colors.white,
  //           width: 300.0,
  //           height: 30.0,
  //         ),
  //         Container(
  //           color: Colors.blue,
  //           width: 300.0,
  //           height: 60.0,
  //         ),
  //         Container(
  //           color: Colors.white,
  //           width: 300.0,
  //           height: 30.0,
  //         ),
  //         Container(
  //           color: Colors.red,
  //           width: 300.0,
  //           height: 30.0,
  //         ),
  //         SizedBox(height: 50.0,),
  //         Text('*อยากให้แสดงรูปธงชาติไทย',style: TextStyle(fontSize: 25,color: Colors.red)),
  //       ],
  //     ),
  //     ),
  //     // body: widgetExam(),
  //   );
  // }


}

