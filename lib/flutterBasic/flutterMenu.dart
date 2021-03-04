import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_101/flutterBasic/centerPage.dart';
import 'package:flutter_101/flutterBasic/columnPage.dart';
import 'package:flutter_101/flutterBasic/containerPage.dart';
import 'package:flutter_101/flutterBasic/expandedPage.dart';
import 'package:flutter_101/flutterBasic/rowPage.dart';
import 'package:flutter_101/flutterBasic/defaultPage.dart';
import 'package:flutter_101/flutterBasic/stackPage.dart';
import 'package:flutter_101/flutterBasic/textPage.dart';

class FlutterMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FlutterMenuState();
  }
}

class _FlutterMenuState extends State<FlutterMenu> {


  var demoMenu = [
    'Center Widget',
    'Column Widget',
    'Row Widget',
    'Expanded Widget',
    'Stack Widget',
    'Container Widget',
    'Text กําหนดขนาดและสีข้อความ',
    'ปุ่มและไอคอน',
    'Listview Widget',
    'Future',
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
                      child: Text(demoMenu[index],
                      style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.yellow),),
                    )
                  ),
                  onTap: () => _onTileClicked(index),
                );
              },
              itemCount: demoMenu.length));

  }

  void _onTileClicked(int index) {
    ///setAppBar = true (Show app bar)
    print("You tapped on item $index");
      if (index == 0) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => CenterPage(title: demoMenu[index])
          ),
        );
      } else if (index == 1) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ColumnPage(title: demoMenu[index])
        ),
        );
      } else if (index == 2) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => RowPage(title: demoMenu[index])
        ),
        );
      } else if (index == 3) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ExpandedPage(title: demoMenu[index])
        ),
        );
      } else if (index == 4) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => StackPage(title: demoMenu[index])
        ),
        );
      }  else if (index == 5) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ContainerPage(title: demoMenu[index])
        ),
        );
      } else if (index == 6) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => TextPage(title: demoMenu[index])
        ),
        );
      } else{
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DefaultPage(title: demoMenu[index],)
        ),
        );
      }
    }


}