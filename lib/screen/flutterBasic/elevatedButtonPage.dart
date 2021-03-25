import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatefulWidget {

  final String title;

  const ElevatedButtonPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ElevatedButtonPageState();
  }
}

class _ElevatedButtonPageState extends State<ElevatedButtonPage> {

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
                'ElevatedButtons แบบต่าง ๆ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(child: Text('Disabled Button')),
              ElevatedButton(
                child: Text('Default Enabled'),
                onPressed: () {
                  print('');
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background
                ),
                child: Text('Text Color Changed'),
                // textColor: Colors.red,
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // background
                ),
                child: Text('Color Changed'),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Button with Padding'),
                // padding: EdgeInsets.all(20),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent, // background
                ),
                child: Text('More Rounded Corners'),
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(16.0))
                // ),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Elevation increased -เงาใต้ปุ๋ม'),
                // elevation: 5,
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Splash Color as red'),
                // splashColor: Colors.red,
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Zero Elevation'),
                // elevation: 0,
                onPressed: () {},
              ),
              ElevatedButton(
                onPressed: () {},
                // textColor: Colors.white,
                // padding: const EdgeInsets.all(0.0),
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

