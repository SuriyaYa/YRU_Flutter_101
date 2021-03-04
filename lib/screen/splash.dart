import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_101/config.dart';

import 'mainPage.dart';

class Splash extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {


  delayPage(){
    Timer(Duration(seconds: 5), () {
      LogDebug("Delay Page userAuth =>");
      try {
        LogDebug("Delay => Home");
        Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()),);
      } on Exception catch (exception) {
        LogDebug('Delay => Home Exception: $exception');
      } catch(Error){
        LogDebug('Delay => Home Error: $Error');
      }

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayPage();
  }



  @override
  Widget build(BuildContext context) {
    LogDebug("Splash  => ");
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('menu_student'.tr),
      // ),
      body: Center(
        child: Column(
          children: [
            Text('Splash'),
          ],
        ),
      ),
    );


  }


}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome In SplashScreen Package"),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: new Text(
          "Succeeded!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}