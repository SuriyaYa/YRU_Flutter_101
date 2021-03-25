import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {

  final String title;

  const ButtonPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ButtonPageState();
  }
}

class _ButtonPageState extends State<ButtonPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Buttons แบบต่าง ๆ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: () => {},
              color: Colors.blue,
              child: Text(
                'Raised Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () => {},
              child: Text(
                'Flat Button',
              ),
            ),
            OutlineButton(
              onPressed: () => {},
              textColor: Colors.blue,
              borderSide: BorderSide(color: Colors.blue, width: 1.0, style: BorderStyle.solid),
              child: Text(
                'Outline Button',
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => {},
                  color: Colors.green,
                  child: Text('Accept', style: TextStyle(color: Colors.white),),
                ),
                RaisedButton(
                  onPressed: () => {},
                  color: Colors.red,
                  child: Text('Cancel', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            RawMaterialButton(
              onPressed: ()=>{},
              fillColor: Colors.blue,
              child: Text('Raw Material Button', style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text('ElevatedButton')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('ElevatedButton icon'),
              icon: Icon(Icons.search),
            ),
            ElevatedButton(
              child: Text('ElevatedButton'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              child: Text('Button'),
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 100, height: 80),
              child: ElevatedButton(
                child: Text('300 x 200'),
                onPressed: () {},
              ),
            ),
          ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.blue,
      ),
    );
  }


}

