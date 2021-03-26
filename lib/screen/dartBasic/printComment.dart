import 'package:flutter/material.dart';

class PrintComment extends StatefulWidget {

  final String title;

  const PrintComment({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PrintCommentState();
  }
}

class _PrintCommentState extends State<PrintComment> {

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
                                child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget> [
                                      //แบบบรรทัดเดียว
                                      Text('1. คอมเมนท์บรรทัดเดียว\n //แบบบรรทัดเดียว', style: TextStyle(fontSize: 22), textAlign: TextAlign.start),
                                      SizedBox(height: 10),

                                      /*
                                      แบบหลายบรรทัด 1
                                      แบบหลายบรรทัด 2
                                      แบบหลายบรรทัด 3
                                      */
                                      Text('2. คอมเมนท์แบบหลายบรรทัด\n/* \n แบบหลายบรรทัด 1\n แบบหลายบรรทัด 2\n แบบหลายบรรทัด 3 \n*/', style: TextStyle(fontSize: 22), textAlign: TextAlign.start),
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

