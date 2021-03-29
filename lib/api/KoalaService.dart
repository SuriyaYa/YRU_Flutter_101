import 'dart:convert';
import 'package:flutter_101/model/CatDao.dart';
import 'package:flutter_101/model/KoalaDao.dart';
import 'package:http/http.dart' as http;

class KoalaService{
  //https://some-random-api.ml/img/koala
  static Future<KoalaDao> randomKoala() async {
    var url = Uri.https('some-random-api.ml', '/img/koala', {'q': '{http}'});
    var response = await http.get(url, headers:  {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }
    );

    print('Request url: $url');
    if (response.statusCode == 200) {
      Map map = json.decode(response.body);
      KoalaDao dao = KoalaDao.fromJson(map);
      print("URL link = " + dao?.link);
      return dao;
    }
  }

}