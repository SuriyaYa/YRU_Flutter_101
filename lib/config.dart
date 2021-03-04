import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Config
bool firstOpenApp = false;
bool userAuth = false;
const enableLog = false; ///For debug mode [Enable=true , Disable=false]
String userAccessToken = '';
String userTokenType = '';
String userStatusType = ''; ///[student / staff / guest]
String userStatusTypeTest = ''; /// ['' / 'all' (for test)]
String tmpLocale = 'th';
String yruConnectVersion = '1.0.0';

///Log
// ignore: non_constant_identifier_names
LogDebug(String message){
  if(enableLog == true) {
    print('[yru_connect] $message');
  }
}

///Api passport

///Background
const backgroundType = 'image'; //type: image / gradient
Color bgColorAppBarAllPage = Color(0xFFFF6997);