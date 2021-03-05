import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'dartBasic/defaultPage.dart';
import 'dartBasic/printComment.dart';

class DartMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _DartMenuState();
  }
}

class _DartMenuState extends State<DartMenu> {


  var dartMenu = [
    'การเขียนคําอธิบาย',
    'ตัวแปรและชนิดข้อมูล',
    'รูปแบบตัวแปรในภาษา Dart',
    'การนิยามตัวแปร (Static Type)',
    'การนิยามตัวแปรแบบ Dynamic กับ Var ',
    'การนิยามค่าคงที่ Constant',
    'การนิยามค่าคงที่ Final',
    'ตัวดําเนินการทางคณิตศาสตร์',
    'ตัวดําเนินการเปรียบเทียบ',
    'ตัวดําเนินการเพิ่มค่า - ลดค่า',
    'ตัวดําเนินการทางตรรกศาสตร์',
    'แบบลําดับ (Sequence)',
    'แบบมีเงื่อนไข (Condition)',
    'แบบทําซ้ำ (Loop)',
    'รูปแบบของฟังก์ชั่น',
    'ขอบเขตตัวแปร',
    'List',
    'Map',

  ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('Dart Basic'),
        ),
          body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    margin: new EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.black,
                      padding: new EdgeInsets.all(10.0),
                      child: Text(dartMenu[index],
                      style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.yellow),),
                    )
                  ),
                  onTap: () => _onTileClicked(index),
                );
              },
              itemCount: dartMenu.length));

  }

  void _onTileClicked(int index) {
    ///setAppBar = true (Show app bar)
    print("You tapped on item $index");
      if (index == 0) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => PrintComment(title: dartMenu[index])
          ),
        );
      } else if (index == 1) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => PrintComment(title: dartMenu[index])
        ),
        );
      }else{
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DefaultPage(title: dartMenu[index],)
        ),
        );
      }
    }


}