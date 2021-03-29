
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class QRCodePage extends StatefulWidget {

  final String title;

  const QRCodePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QRCodePageState();
  }
}

class _QRCodePageState extends State<QRCodePage> {
  int genbarcode = 1000;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.all(16.0),
                child: SingleChildScrollView(
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
                                          });
                                        },
                                      ),
                                      SizedBox(height: 50),
                                      Container(
                                        // padding: const EdgeInsets.all(5.0),
                                        child: BarcodeWidget(
                                          barcode: Barcode.qrCode(), // Barcode type and settings
                                          data: '${countNummber()}', // Content
                                          // data: 'yru flutter qrcode',
                                          // width: 400,
                                          height: 250,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text('$genbarcode',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold)),

                                    ]
                                )
                            ),
                      ]
                  ),
                ),
      ),
    );
  }

  countNummber(){

    genbarcode = genbarcode+10;

    return genbarcode;
  }

}

