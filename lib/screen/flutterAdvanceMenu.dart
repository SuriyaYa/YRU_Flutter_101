import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_101/screen/flutterAdvance/barCodePage.dart';
import 'package:flutter_101/screen/flutterAdvance/futurePage.dart';
import 'package:flutter_101/screen/flutterAdvance/qrCodePage.dart';
import 'package:flutter_101/screen/flutterBasic/listViewMenu.dart';

class FlutterAdvanceMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FlutterAdvanceMenuState();
  }
}

class _FlutterAdvanceMenuState extends State<FlutterAdvanceMenu> {


  var widgetMenu = [

    '1. Listview Widget',
    '2. Future',
    '3. Generate QRCode',
    '4. Generate Barcode',
    // 'new line',

  ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basic'),
        ),
          body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    margin: new EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.black,
                      padding: new EdgeInsets.all(10.0),
                      child: Text(widgetMenu[index],
                      style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.yellow),),
                    ),
                  ),
                  onTap: () => _onTileClicked(index),
                );
              },
              itemCount: widgetMenu.length)
      );

  }

  void _onTileClicked(int index) {
    ///setAppBar = true (Show app bar)
    print("You tapped on item $index");
      if (index == 0) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListViewMenu(title: widgetMenu[index]) //เรียกไปยังคลาสหรือหน้าแอพอื่นๆ
        ),
        );
      }else if (index == 1) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => FuturePage(title: widgetMenu[index])
        ),
        );
      }else if (index == 2) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => QRCodePage(title: widgetMenu[index])
        ),
        );
      }else if (index == 3) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => BarcodePage(title: widgetMenu[index])
        ),
        );
      }
      // else{
      //   Navigator.push(context, MaterialPageRoute(
      //       builder: (context) => DefaultPage(title: widgetMenu[index],)
      //   ),
      //   );
      // }
    }


}