import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatefulWidget {

  final String title;

  const ListViewSeparatedPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListViewSeparatedPageState();
  }
}

class _ListViewSeparatedPageState extends State<ListViewSeparatedPage> {

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(20, (i) => "Separated Item $i");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: ListView.separated(
            itemCount: items.length,
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                leading: Icon(Icons.star),
                title:Text("List ${items[index].characters} / index: $index"),
                subtitle: Text('subtitle ${items[index].characters}'),
                trailing: Text("GFG",
                  style: TextStyle(
                      color: Colors.green,fontSize: 15),),

                onTap: (){
                  print('Touch List $index');
                },
              );
            },
            ///1. แบบย่อฟังก์ชัน
          // separatorBuilder: (context, index) => const Divider(),
            ///2. แบบฟังก์ชันปกติ
          separatorBuilder: (context, index) {
              return const Divider();
          }

        ),
      ),
    );
  }
}

