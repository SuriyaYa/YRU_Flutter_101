import 'dart:convert';

import 'package:flutter_101/model/PandaDao.dart';
import 'package:http/http.dart' as http;

class PandaService{
  //https://some-random-api.ml/img/panda
  static Future<PandaDao> randomPanda() async {
    var url = Uri.https('some-random-api.ml', '/img/panda', {'q': '{http}'});
    var response = await http.get(url, headers:  {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }
    );

    print('Request url: $url');
    if (response.statusCode == 200) {
      Map map = json.decode(response.body);
      PandaDao dao = PandaDao.fromJson(map);
      print("URL link = " + dao?.link);
      return dao;
    }
  }

}