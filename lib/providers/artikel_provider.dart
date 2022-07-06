import 'package:flutter/cupertino.dart';
import 'package:artikelapp/models/artikel_model.dart';
import 'package:artikelapp/models/detail_artikel_model.dart';
import 'package:artikelapp/services/artikel_service.dart';

class ArtikelProvider extends ChangeNotifier{

  ArtikelProvider(){
    showListArtikel();
  }

  final ArtikelService _ArtikelService = ArtikelService();
  ArtikelModel artikelModel = ArtikelModel();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  showListArtikel() async {
    artikelModel = await _ArtikelService.getArtikel();
    notifyListeners();
  }

  showDetailArtikel(int? id) async {
    detailArtikelModel = await _ArtikelService.getDetailArtikel(key:id );
    print("id: $id");
    notifyListeners();
  }

  
}
class ArtikelDetailProvider with ChangeNotifier{
    final ArtikelService _ArtikelService = ArtikelService();
    DetailArtikelModel detailArtikelModel = DetailArtikelModel();
  }
