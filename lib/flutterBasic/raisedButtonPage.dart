import 'package:flutter/material.dart';

class RaisedButtonPage extends StatefulWidget {

  final String title;

  const RaisedButtonPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RaisedButtonPageState();
  }
}

class _RaisedButtonPageState extends State<RaisedButtonPage> {

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
                'RaisedButtons แบบต่าง ๆ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RaisedButton(child: Text('Disabled Button')),
              RaisedButton(
                child: Text('Default Enabled'),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Text Color Changed'),
                textColor: Colors.red,
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Color Changed'),
                color: Colors.green,
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Button with Padding'),
                padding: EdgeInsets.all(20),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('More Rounded Corners'),
                color: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))
                ),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Elevation increased -เงาใต้ปุ๋ม'),
                elevation: 5,
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Splash Color as red'),
                splashColor: Colors.red,
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Zero Elevation'),
                elevation: 0,
                onPressed: () {},
              ),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Gradient Color'),
                ),
              ),
            ]
        ),
    );
  }


}

