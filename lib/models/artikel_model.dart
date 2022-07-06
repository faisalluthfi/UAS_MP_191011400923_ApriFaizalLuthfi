class ArtikelModel {
  List<Data>? data;
  String? message;
  int? code;

  ArtikelModel({this.data, this.message, this.code});

  ArtikelModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['code'] = this.code;
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? resume;
  String? description;
  Null? subtitle;
  String? createdAt;
  int? views;
  int? publish;
  Null? headline;
  int? likes;
  String? menu;
  String? submenu;
  String? category;
  String? subcategory;
  String? source;
  String? regenciesAsRegency;
  String? province;
  String? image;
  String? editor;

  Data(
      {this.id,
      this.title,
      this.resume,
      this.description,
      this.subtitle,
      this.createdAt,
      this.views,
      this.publish,
      this.headline,
      this.likes,
      this.menu,
      this.submenu,
      this.category,
      this.subcategory,
      this.source,
      this.regenciesAsRegency,
      this.province,
      this.image,
      this.editor});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    resume = json['resume'];
    description = json['description'];
    subtitle = json['subtitle'];
    createdAt = json['created_at'];
    views = json['views'];
    publish = json['publish'];
    headline = json['headline'];
    likes = json['likes'];
    menu = json['menu'];
    submenu = json['submenu'];
    category = json['category'];
    subcategory = json['subcategory'];
    source = json['source'];
    regenciesAsRegency = json['regencies as regency'];
    province = json['province'];
    image = json['image'];
    editor = json['editor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['resume'] = this.resume;
    data['description'] = this.description;
    data['subtitle'] = this.subtitle;
    data['created_at'] = this.createdAt;
    data['views'] = this.views;
    data['publish'] = this.publish;
    data['headline'] = this.headline;
    data['likes'] = this.likes;
    data['menu'] = this.menu;
    data['submenu'] = this.submenu;
    data['category'] = this.category;
    data['subcategory'] = this.subcategory;
    data['source'] = this.source;
    data['regencies as regency'] = this.regenciesAsRegency;
    data['province'] = this.province;
    data['image'] = this.image;
    data['editor'] = this.editor;
    return data;
  }
}
