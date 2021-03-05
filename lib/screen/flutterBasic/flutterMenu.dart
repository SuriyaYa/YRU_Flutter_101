import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_101/screen/flutterBasic/centerPage.dart';
import 'package:flutter_101/screen/flutterBasic/columnPage.dart';
import 'package:flutter_101/screen/flutterBasic/containerPage.dart';
import 'package:flutter_101/screen/flutterBasic/expandedPage.dart';
import 'package:flutter_101/screen/flutterBasic/futurePage.dart';
import 'package:flutter_101/screen/flutterBasic/iconPage.dart';
import 'package:flutter_101/screen/flutterBasic/imagePage.dart';
import 'package:flutter_101/screen/flutterBasic/listviewPage.dart';
import 'package:flutter_101/screen/flutterBasic/raisedButtonPage.dart';
import 'package:flutter_101/screen/flutterBasic/rowPage.dart';
import 'package:flutter_101/screen/flutterBasic/defaultPage.dart';
import 'package:flutter_101/screen/flutterBasic/scaffoldPage.dart';
import 'package:flutter_101/screen/flutterBasic/stackPage.dart';
import 'package:flutter_101/screen/flutterBasic/textPage.dart';

class FlutterMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FlutterMenuState();
  }
}

class _FlutterMenuState extends State<FlutterMenu> {


  var demoMenu = [
    '1. Center Widget',
    '2. Column Widget',
    '3. Row Widget',
    '4. Expanded Widget',
    '5. Stack Widget',
    '6. Container Widget',
    '7. Text Widget',
    '8. RaisedButton Widget',
    '9. Icon Widget',
    '10. Image Widget',
    '11. Listview Widget',
    '12. Future',
    // '13. Scaffold Widget',

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
              itemCount: demoMenu.length)
      );

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
      } else if (index == 7) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => RaisedButtonPage(title: demoMenu[index])
        ),
        );
      } else if (index == 8) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => IconPage(title: demoMenu[index])
        ),
        );
      }else if (index == 9) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ImagePage(title: demoMenu[index])
        ),
        );
      }else if (index == 10) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ListviewPage(title: demoMenu[index])
        ),
        );
      }else if (index == 11) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => FuturePage(title: demoMenu[index])
        ),
        );
      }else if (index == 12) {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ScaffoldPage(title: demoMenu[index])
        ),
        );
      }else{
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DefaultPage(title: demoMenu[index],)
        ),
        );
      }
    }


}