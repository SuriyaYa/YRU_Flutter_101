
import 'package:flutter/material.dart';
import 'package:flutter_101/api/CatService.dart';
import 'package:flutter_101/api/CovidService.dart';
import 'package:flutter_101/api/KoalaService.dart';
import 'package:flutter_101/api/PandaService.dart';
import 'package:flutter_101/model/CatDao.dart';
import 'package:flutter_101/model/CovidDao.dart';
import 'package:flutter_101/model/KoalaDao.dart';
import 'package:flutter_101/model/PandaDao.dart';

class FuturePage extends StatefulWidget {

  final String title;

  const FuturePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FuturePageState();
  }
}

class _FuturePageState extends State<FuturePage> {

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

                                          });
                                        },
                                      ),
                                      SizedBox(height: 10),
                                      FutureBuilder(
                                          future: CovidService.getData(), //koala
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              print('${snapshot.data}');
                                              CovidDao dao = snapshot.data;
                                              // print('link = ${dao.link.toString()}');
                                              String data;
                                              data = 'country = ${dao?.country} '
                                                  '\n cases = ${dao?.cases}'
                                                  '\n todayCases = ${dao?.todayCases}'
                                                  '\n active = ${dao?.active}';
                                              // return Text(data);
                                              return covidData(dao);
                                            } else {
                                              return CircularProgressIndicator();
                                            }
                                          }
                                      ),
                                      SizedBox(height: 10),
                                      FutureBuilder(
                                          future: CatService.randomCat(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              print('${snapshot.data}');
                                              CatDao dao = snapshot.data;
                                              // print('link = ${dao.link.toString()}');
                                              return Image.network(dao.link,width: 300,height: 200,);
                                            } else {
                                              return CircularProgressIndicator();
                                            }
                                          }
                                      ),
                                      SizedBox(height: 10),
                                      FutureBuilder(
                                          future: KoalaService.randomKoala(), //koala
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              print('${snapshot.data}');
                                              KoalaDao dao = snapshot.data;
                                              // print('link = ${dao.link.toString()}');
                                              return Image.network(dao.link,width: 300,height: 200,);
                                            } else {
                                              return CircularProgressIndicator();
                                            }
                                          }
                                      ),

                                      // SizedBox(height: 10),
                                      // FutureBuilder(
                                      //     future: PandaService.randomPanda(),
                                      //     builder: (context, snapshot) {
                                      //       if (snapshot.hasData) {
                                      //         print('${snapshot.data}');
                                      //         PandaDao dao = snapshot.data;
                                      //         // print('link = ${dao.link.toString()}');
                                      //         return Image.network(dao.link,width: 300,height: 200,);
                                      //       } else {
                                      //         return CircularProgressIndicator();
                                      //       }
                                      //     }
                                      // ),
                                      // SizedBox(height: 10),
                                      // FutureBuilder(
                                      //     future: CatService.randomCat(),
                                      //     builder: (context, snapshot) {
                                      //       if (snapshot.hasData) {
                                      //         print('${snapshot.data}');
                                      //         CatDao dao = snapshot.data;
                                      //         // print('link = ${dao.link.toString()}');
                                      //         return Image.network(dao.link,width: 300,height: 200,);
                                      //       } else {
                                      //         return CircularProgressIndicator();
                                      //       }
                                      //     }
                                      // ),
                                      // SizedBox(height: 10),
                                      // FutureBuilder(
                                      //     future: PandaService.randomPanda(),
                                      //     builder: (context, snapshot) {
                                      //       if (snapshot.hasData) {
                                      //         print('${snapshot.data}');
                                      //         PandaDao dao = snapshot.data;
                                      //         // print('link = ${dao.link.toString()}');
                                      //         return Image.network(dao.link,width: 300,height: 200,);
                                      //       } else {
                                      //         return CircularProgressIndicator();
                                      //       }
                                      //     }
                                      // ),
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

  covidData(CovidDao dao){
    return new Column(
      children: [
        Text('country = ${dao?.country}',style: TextStyle(fontSize: 30, color: Colors.blue)),
        Text('cases = ${dao?.cases}',style: TextStyle(fontSize: 20, color: Colors.green)),
        Text('todayCases = ${dao?.todayCases}',style: TextStyle(fontSize: 20, color: Colors.yellow)),
        Text('active = ${dao?.active}',style: TextStyle(fontSize: 20, color: Colors.orange)),
        Text('deaths = ${dao?.deaths}',style: TextStyle(fontSize: 20, color: Colors.red)),
      ],
    );
  }

}

