class DetailArtikelModel {
  List<Data>? data;
  String? message;
  int? code;

  DetailArtikelModel({this.data, this.message, this.code});

  DetailArtikelModel.fromJson(Map<String, dynamic> json) {
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
  int? menuId;
  String? submenu;
  int? submenuId;
  String? category;
  int? categoryId;
  String? subcategory;
  int? subcategoryId;
  String? source;
  String? regency;
  int? regencyId;
  String? province;
  int? provinceId;
  String? image;
  String? editor;
  int? editorId;

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
      this.menuId,
      this.submenu,
      this.submenuId,
      this.category,
      this.categoryId,
      this.subcategory,
      this.subcategoryId,
      this.source,
      this.regency,
      this.regencyId,
      this.province,
      this.provinceId,
      this.image,
      this.editor,
      this.editorId});

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
    menuId = json['menu_id'];
    submenu = json['submenu'];
    submenuId = json['submenu_id'];
    category = json['category'];
    categoryId = json['category_id'];
    subcategory = json['subcategory'];
    subcategoryId = json['subcategory_id'];
    source = json['source'];
    regency = json['regency'];
    regencyId = json['regency_id'];
    province = json['province'];
    provinceId = json['province_id'];
    image = json['image'];
    editor = json['editor'];
    editorId = json['editor_id'];
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
    data['menu_id'] = this.menuId;
    data['submenu'] = this.submenu;
    data['submenu_id'] = this.submenuId;
    data['category'] = this.category;
    data['category_id'] = this.categoryId;
    data['subcategory'] = this.subcategory;
    data['subcategory_id'] = this.subcategoryId;
    data['source'] = this.source;
    data['regency'] = this.regency;
    data['regency_id'] = this.regencyId;
    data['province'] = this.province;
    data['province_id'] = this.provinceId;
    data['image'] = this.image;
    data['editor'] = this.editor;
    data['editor_id'] = this.editorId;
    return data;
  }
}
