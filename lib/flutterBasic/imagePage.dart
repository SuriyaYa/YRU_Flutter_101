import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {

  final String title;

  const ImagePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ImagePageState();
  }
}

class _ImagePageState extends State<ImagePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text('ภาพจาก assets ',style: new TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.red),),
            Container(
              height: 200.0,
              color: Colors.grey,
              child: Image.asset('assets/images/logo/splash_yru_logo.png',height: 180.0,) ,
            ),
            Text('ภาพจาก url link',style: new TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.red),),
            Container(
              width: 300.0,
              child: Image.network('https://yru.ac.th/intro/AtInnYRU_W825.png'),
            ),
          ]
      ),
    );
  }


}

