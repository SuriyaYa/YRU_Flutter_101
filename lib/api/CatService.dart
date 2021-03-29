import 'dart:convert';
import 'package:flutter_101/model/CatDao.dart';
import 'package:http/http.dart' as http;

class CatService{
  //https://some-random-api.ml/img/cat
  static Future<CatDao> randomCat() async {
    var url = Uri.https('some-random-api.ml', '/img/cat', {'q': '{http}'});
    var response = await http.get(url, headers:  {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }
    );

    print('Request url: $url');
    if (response.statusCode == 200) {
      Map map = json.decode(response.body);
      CatDao dao = CatDao.fromJson(map);
      print("URL link = " + dao?.link);
      return dao;
    }
  }

}