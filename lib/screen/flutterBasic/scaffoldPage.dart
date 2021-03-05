import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {

  final String title;

  const ScaffoldPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScaffoldPage();
  }
}

class _ScaffoldPage extends State<ScaffoldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              print('onPressed menu');
            }
        ),
        title: Text(widget.title),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.markunread),
            tooltip: 'Mark as Unread',
            onPressed: () {
              print('onPressed Mark as Unread ');
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'More Setting',
            onPressed: () {
              print('onPressed More Setting ');
            },
          ),
        ],
      ),
      body: Material(
          color: Colors.grey,
          child: Center(
              child: Text(
                  'Hello World',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0
                  )
              )
          )
      ),
      drawer: Drawer(
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                    title: Text('Item 1'),
                    onTap: () {}
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 3'),
                  onTap: () {},
                ),
              ],
            ),
          )
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.green,
          height: 50.0,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    height: 50.0,
                    color: Colors.red,
                    child: Icon(Icons.emoji_nature,color: Colors.white,),
                  ),
              ), Expanded(
                child: Container(
                  height: 50.0,
                  color: Colors.green,
                  child: Icon(Icons.emoji_objects_outlined,color: Colors.white,),
                ),
              ), Expanded(
                child: Container(
                  height: 50.0,
                  color: Colors.blue,
                  child: Icon(Icons.supervisor_account_sharp,color: Colors.white,),
                ),
              ), Expanded(
                child: Container(
                  height: 50.0,
                  color: Colors.pinkAccent,
                  child: Icon(Icons.settings,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          print('onPressed FloatingActionButton ');
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}