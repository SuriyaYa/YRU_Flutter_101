import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                    leading: Icon(Icons.list),
                    trailing: Text("GFG",
                      style: TextStyle(
                          color: Colors.green,fontSize: 15),),
                    title:Text("List item $index")
                );
              }
          ),
      ),
    );
  }


}

