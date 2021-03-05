import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_101/screen/flutterBasic/centerPage.dart';
import 'package:flutter_101/screen/flutterBasic/columnPage.dart';
import 'package:flutter_101/screen/flutterBasic/containerPage.dart';
import 'package:flutter_101/screen/flutterBasic/expandedPage.dart';
import 'package:flutter_101/screen/flutterBasic/futurePage.dart';
import 'package:flutter_101/screen/flutterBasic/iconPage.dart';
import 'package:flutter_101/screen/flutterBasic/imagePage.dart';
import 'package:flutter_101/screen/flutterBasic/listviewPage/listViewBuilderPage.dart';
import 'package:flutter_101/screen/flutterBasic/listviewPage/listViewCustomPage.dart';
import 'package:flutter_101/screen/flutterBasic/listviewPage/listViewPage.dart';
import 'package:flutter_101/screen/flutterBasic/listviewPage/listViewSeperatedPage.dart';
import 'package:flutter_101/screen/flutterBasic/raisedButtonPage.dart';
import 'package:flutter_101/screen/flutterBasic/rowPage.dart';
import 'package:flutter_101/screen/flutterBasic/defaultPage.dart';
import 'package:flutter_101/screen/flutterBasic/scaffoldPage.dart';
import 'package:flutter_101/screen/flutterBasic/stackPage.dart';
import 'package:flutter_101/screen/flutterBasic/textPage.dart';

class ListViewMenu extends StatefulWidget {

  final String title;

  const ListViewMenu({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListViewMenuState();
  }
}

class _ListViewMenuState extends State<ListViewMenu> {


  var listViewMenu = [
    '1. ListView',
    '2. ListView Builder',
    '3. ListView Seperated',
    '4. ListView Custom',

  ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
          body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    margin: new EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.black,
                      padding: new EdgeInsets.all(10.0),
                      child: Text(listViewMenu[index],
                      style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.yellow),),
                    )
                  ),
                  onTap: () => _onTileClicked(index),
                );
              },
              itemCount: listViewMenu.length)
      );

  }

  void _onTileClicked(int index) {
    ///setAppBar = true (Show app bar)
    print("You tapped on item $index");
      if (index == 0) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListViewPage(title: listViewMenu[index])
          ),
        );
      } else if (index == 1) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListViewBuilderPage(title: listViewMenu[index])
        ),
        );
      } else if (index == 2) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListViewSeparatedPage(title: listViewMenu[index])
        ),
        );
      } else if (index == 3) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListViewCustomPage(title: listViewMenu[index])
        ),
        );
      }
    }


}