import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_101/api/CatService.dart';

class ListViewBuilderPage extends StatefulWidget {

  final String title;

  const ListViewBuilderPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListViewBuilderPageState();
  }
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(40, (i) => "Yru item $i");
    print('item= ${items.length}');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  leading: Icon(Icons.sentiment_neutral),
                  title:Text("> ${items[index].characters} / index: $index"),
                  subtitle: Text('ผลคูณ $index x 2 =    ${index * 2}'),
                  trailing: Text("GFG",
                    style: TextStyle(
                        color: Colors.green,fontSize: 15),),

                  onTap: (){
                    print('Touch List >> $index');

                  },
                );
              }
          ),
      ),
    );
  }



}

