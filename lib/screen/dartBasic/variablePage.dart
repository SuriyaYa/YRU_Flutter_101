import 'package:flutter/material.dart';

class VariablePage extends StatefulWidget {

  final String title;

  const VariablePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VariablePageState();
  }
}

class _VariablePageState extends State<VariablePage> {

  @override
  Widget build(BuildContext context) {

    exampleFunction();

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
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget> [
                                      Text('*แสดงผลใน Console "Run"', style: TextStyle(fontSize: 22), textAlign: TextAlign.start),
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

  exampleFunction(){

    bool b = true;
    int i = 0;
    double db = 1.0;
    String str = 'มหาวิทยาลัยราชภัฏยะลา Yala Rajabhat University';
    List<String> listStr = ["มะม่วง", "มะละกอ", "ส้ม"];
    Map map = {'firstName':"ชื่อ", 'lastName':"นามสกุล", 'age':20};
    var v;

    print('bool  = $b');
    print('/---------------------------------------------/');
    print('int  = $i');
    print('double  = $db');
    print('/---------------------------------------------/');
    print('String  = $str');
    print('/---------------------------------------------/');
    for(int i=0;i<listStr.length;i++){
      print('List $i ${listStr[i]}');
    }
    print('/---------------------------------------------/');
    print('map = $map');
    print('firstName = ${map['firstName']}');
    print('/---------------------------------------------/');
    v = 2;
    print('var int = $v');
    v = 32.09;
    print('var double = $v');
    print('/---------------------------------------------/');
    v = 'string:32';
    print('var string = $v');
    print('/---------------------------------------------/');

    dynamic dy = 5;
    print('dynamic = $dy');
    dy = 2;
    print('dynamic int = $dy');
    dy = 32.08;
    print('dynamic double = $dy');
    dy = 'string:32';
    print('dynamic string = $dy');

  }


}

