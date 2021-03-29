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
          // padding: new EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(color: Colors.red),
                flex: 1,
              ),
              Expanded(
                child: Container(color: Colors.green),
                flex: 2,
              ),
              Expanded(
                child: Container(color: Colors.blue),
                flex: 3,
              ),
              Expanded(
                child: Container(color: Colors.orange),
                flex: 4,
              ),
              // SizedBox(height: 20.0,),
              // Text('*อยากให้แสดงสีเรียง 7 สี เช่น \nแดง เขียว น้ำเงิน ขาว ส้ม ชมพู ดำ ',style: TextStyle(fontSize: 25,color: Colors.red)),
            ],
          ),
      ),

      // body: Column(
      //     children: <Widget>[
      //       Expanded(
      //         child: Container(color: Colors.red),
      //         flex: 1,
      //       ),
      //       Expanded(
      //         child: Container(color: Colors.green),
      //         flex: 1,
      //       ),
      //       Expanded(
      //         child: Container(color: Colors.blue),
      //         flex: 1,
      //       ),
      //       // SizedBox(height: 20.0,),
      //       // Text('*อยากให้แสดงสีเรียง 7 สี เช่น \nแดง เขียว น้ำเงิน ขาว ส้ม ชมพู ดำ ',style: TextStyle(fontSize: 25,color: Colors.red)),
      //     ],
      //   ),


    );
  }

  // @override
  // Widget build(BuildContext context) {
  //
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: new Container(
  //       padding: new EdgeInsets.all(16.0),
  //       child: Column(
  //         children: <Widget>[
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Expanded(
  //                 child: Container(color: Colors.red, height: 100.0,),
  //                 flex: 1,
  //               ),
  //               Expanded(
  //                 child: Container(color: Colors.green, height: 100.0,),
  //                 flex: 1,
  //               ),
  //               Expanded(
  //                 child: Container(color: Colors.blue, height: 100.0,),
  //                 flex: 1,
  //               ),
  //               Expanded(
  //                 child: Container(color: Colors.white, height: 100.0,),
  //                 flex: 1,
  //               ),
  //               Expanded(
  //                 child: Container(color: Colors.orange, height: 100.0,),
  //                 flex: 1,
  //               ),
  //               Expanded(
  //                 child: Container(color: Colors.pink, height: 100.0,),
  //                 flex: 1,
  //               ),
  //               Expanded(
  //                 child: Container(color: Colors.black, height: 100.0,),
  //                 flex: 1,
  //               ),
  //             ],
  //           ),
  //           SizedBox(height: 20.0,),
  //           Text('*อยากให้แสดงสีเรียง 7 สี เช่น \nแดง เขียว น้ำเงิน ขาว ส้ม ชมพู ดำ ขนาดเท่ากันหมด แบบ Row',style: TextStyle(fontSize: 25,color: Colors.red)),
  //         ],
  //       ),
  //     ),
  //   );
  // }


}

