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
    final items = List<String>.generate(150, (i) => "Item $i");

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
                  title:Text("List ${items[index].characters} / index: $index"),
                  subtitle: Text('subtitle ${items[index].characters}'),
                  trailing: Text("GFG",
                    style: TextStyle(
                        color: Colors.green,fontSize: 15),),

                  onTap: (){
                    print('Touch List $index');
                  },
                );
              }
          ),
      ),
    );
  }


}

