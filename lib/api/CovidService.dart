import 'dart:convert';
import 'package:flutter_101/model/CatDao.dart';
import 'package:flutter_101/model/CovidDao.dart';
import 'package:flutter_101/model/KoalaDao.dart';
import 'package:http/http.dart' as http;

class CovidService{
  //https://corona.lmao.ninja/v2/countries/THA
  static Future<CovidDao> getData() async {
    var url = Uri.https('corona.lmao.ninja', '/v2/countries/THA', {'q': '{http}'});
    var response = await http.get(url, headers:  {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }
    );

    print('Request url: $url');
    if (response.statusCode == 200) {
      Map map = json.decode(response.body);
      CovidDao dao = CovidDao.fromJson(map);
      print("todayCases = ${dao?.todayCases}" );
      return dao;
    }
  }

}