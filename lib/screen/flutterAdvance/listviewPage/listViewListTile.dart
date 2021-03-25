import 'package:flutter/material.dart';

class ListViewLisTile extends StatefulWidget {

  final String title;

  const ListViewLisTile({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListViewPageState();
  }
}

class _ListViewPageState extends State<ListViewLisTile> {

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
                ListTile(
                  title: Text('List Star'),
                  leading: Icon(Icons.star),
                  onTap: (){
                    print('Touch List 1');
                  },
                ),
                ListTile(
                  title: Text('List Album'),
                  leading: Icon(Icons.album),
                  onTap: (){
                    print('Touch List 1');
                  },
                ),
                ListTile(
                  title: Text('List Phone'),
                  leading: Icon(Icons.phone),
                  onTap: (){
                    print('Touch List 1');
                  },
                ),
                ListTile(
                  title: Text('List Photo'),
                  subtitle: Text('Sub Photo'),
                  leading: Icon(Icons.add_a_photo_rounded),
                  trailing: Icon(Icons.add_a_photo_rounded,color: Colors.red,),
                  onTap: (){
                    print('Touch List 1');
                  },
                )
          ],
          ),
      ),
    );
  }


}

