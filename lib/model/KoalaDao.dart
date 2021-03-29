class KoalaDao {
  String link;

  KoalaDao({this.link});

  KoalaDao.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    return data;
  }
}