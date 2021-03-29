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
            SizedBox(height: 20.0,),
            Text('1. ElevatedButton', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ElevatedButton(
              child: Text('ElevatedButton<<<', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.orange)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.all(30.0)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
              onPressed: () {
                print('Elevated Button');
              },
            ),
            Text('2. ButtonBar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Accept'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
                  onPressed: () {
                    print('Accept');
                  },
                ),
                ElevatedButton(
                  child: Text('Cancel'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
                  onPressed: () {
                    print('Cancel');
                  },
                ),
                ElevatedButton(
                  child: Text('OK'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
                  onPressed: () {
                    print('OK');
                  },
                ),
              ],
            ),
            Text('3. RawMaterialButton', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            RawMaterialButton(
              fillColor: Colors.blue,
              child: Text('Raw Material Button', style: TextStyle(color: Colors.white),),
              onPressed: () {
                print('RawMaterialButton');
              },
            ),
            Text('4. ElevatedButton + icon', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ElevatedButton.icon(
              label: Text('ElevatedButton icon'),
              icon: Icon(Icons.access_alarm_outlined),
              onPressed: () {
                print('ElevatedButton icon');
              },
            ),
            Text('5. ElevatedBConstrainedBox', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 300, height: 200),
              child: ElevatedButton(
                child: Text('300 x 200'),
                onPressed: () {
                  print('ConstrainedBox');
                },
              ),
            ),
          ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_balance),
        backgroundColor: Colors.blue,
        onPressed: () {
          print('FloatingActionButton');
        },
      ),
    );
  }


}

