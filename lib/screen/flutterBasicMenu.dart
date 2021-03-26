import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_101/screen/flutterBasic/centerPage.dart';
import 'package:flutter_101/screen/flutterBasic/columnPage.dart';
import 'package:flutter_101/screen/flutterBasic/containerPage.dart';
import 'package:flutter_101/screen/flutterBasic/expandedPage.dart';
import 'package:flutter_101/screen/flutterBasic/iconPage.dart';
import 'package:flutter_101/screen/flutterBasic/imagePage.dart';
import 'package:flutter_101/screen/flutterBasic/buttonPage.dart';
import 'package:flutter_101/screen/flutterBasic/rowPage.dart';
import 'package:flutter_101/screen/flutterBasic/defaultPage.dart';
import 'package:flutter_101/screen/flutterBasic/stackPage.dart';
import 'package:flutter_101/screen/flutterBasic/textPage.dart';

class FlutterBasicMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FlutterMenuState();
  }
}

class _FlutterMenuState extends State<FlutterBasicMenu> {


  var widgetMenu = [
    '1. Center Widget',
    '2. Column Widget',
    '3. Row Widget',
    '4. Expanded Widget',
    '5. Stack Widget',
    '6. Container Widget',
    '7. Text Widget',
    '8. Button Widget',
    '9. Icon Widget',
    '10. Image Widget',

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
                    )
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
            builder: (context) => CenterPage(title: widgetMenu[index])
          ),
        );
      } else if (index == 1) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ColumnPage(title: widgetMenu[index])
        ),
        );
      } else if (index == 2) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => RowPage(title: widgetMenu[index])
        ),
        );
      } else if (index == 3) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ExpandedPage(title: widgetMenu[index])
        ),
        );
      } else if (index == 4) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => StackPage(title: widgetMenu[index])
        ),
        );
      }  else if (index == 5) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ContainerPage(title: widgetMenu[index])
        ),
        );
      } else if (index == 6) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => TextPage(title: widgetMenu[index])
        ),
        );
      } else if (index == 7) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ButtonPage(title: widgetMenu[index])
        ),
        );
      } else if (index == 8) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => IconPage(title: widgetMenu[index])
        ),
        );
      }else if (index == 9) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ImagePage(title: widgetMenu[index])
        ),
        );
      }else{
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DefaultPage(title: widgetMenu[index],)
        ),
        );
      }
    }


}