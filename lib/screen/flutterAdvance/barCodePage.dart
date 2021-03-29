
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodePage extends StatefulWidget {

  final String title;

  const BarcodePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BarcodePageState();
  }
}

class _BarcodePageState extends State<BarcodePage> {
  int genbarcode = 1000;

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
                SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget> [
                            new Container(
                                padding: new EdgeInsets.all(10.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget> [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue, // background
                                        ),
                                        child: Text('Refresh'),
                                        onPressed: () {
                                          setState(() {
                                            print('refresh');
                                          });
                                        },
                                      ),
                                      SizedBox(height: 50),
                                      BarcodeWidget(
                                        barcode: Barcode.code128(), // Barcode type and settings
                                        data: '${countNummber()}', // Content
                                        width: 300.0,
                                        height: 150.0, style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                )
                            ),
                      ]
                  ),
                ),
          ],
          ),
      ),
    );
  }

  countNummber(){

    genbarcode = genbarcode+1;

    return genbarcode;
  }

}

