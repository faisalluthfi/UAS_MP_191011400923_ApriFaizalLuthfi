import 'package:dio/dio.dart';
import 'package:artikelapp/models/detail_artikel_model.dart';
import 'package:artikelapp/models/artikel_model.dart';

class ArtikelService{

  Future<ArtikelModel> getArtikel() async{
  var response = await Dio().
  get('https://api.indosiana.com/api/articles');
  return ArtikelModel.fromJson(response.data);
  }
  
  Future<DetailArtikelModel> getDetailArtikel({int? key}) async {
   try{
     var response = await Dio().
  get('https://api.indosiana.com/api/articles/$key');
  return DetailArtikelModel.fromJson(response.data);    
   } catch (e){
    print(e);
    rethrow ;
   }
  
  
  }
}