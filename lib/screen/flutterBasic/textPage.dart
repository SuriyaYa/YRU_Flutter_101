import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {

  final String title;

  const TextPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TextPageState();
  }
}

class _TextPageState extends State<TextPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Text 1',
                style: TextStyle(fontSize: 50, color: Colors.red),
              ),
              Text(
                'Text 2',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                'Text 3',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.pink ),
              ),
              Text(
                'Text 4 ข้อความมีความยาวมากๆ ก็จะทำการตัดบรรทัดให้อัตโนมัติ ตามความกว้างหรือขนาดของหน้าจอ',
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.red,),
              ),
              Text(
                'Text 5 ตัดคำเมื่อยาวเกินขอบเขตของความกว้างหน้าจอ โดยไม่ต้องขึ้นบรรทัดใหม่',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green,),
              ),
              Text.rich(
                TextSpan(
                  children: <TextSpan> [
                    TextSpan(
                        text: 'Text 6 ',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.red,)
                    ),
                    TextSpan(
                      text: 'msg1 ',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.green,)
                    ),
                    TextSpan(
                        text: ' msg2',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue,)
                    ),
                    TextSpan(
                        text: ' msg3',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange,)
                    ),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }


}

