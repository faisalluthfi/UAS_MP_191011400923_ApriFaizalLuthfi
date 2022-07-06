import 'package:artikelapp/providers/artikel_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:artikelapp/providers/artikel_provider.dart';
import 'package:artikelapp/screens/detail_artikel_screen.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({Key? key}) : super(key: key);

  @override
  State<ArtikelScreen> createState() => _ARtikelScreenState();
}

class _ARtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('191011400923_Apri Faizal Luthfi'),
        centerTitle: true,
      ),
      body: Consumer<ArtikelProvider>(
        child: Column(
          children: [
            Text("Artikel Terbaru")
          ],
        ),
        
        builder: (context, artikelProvider, child) {
          return ListView.builder(
            itemCount: artikelProvider.artikelModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtikelScreen(
                        title: artikelProvider.artikelModel.data![index].title,
                        
                      ),
                    ),
                  );
                  artikelProvider.showDetailArtikel(artikelProvider.artikelModel.data![index].id);
                },
                child: 
                Card(
                  
                  elevation: 20,
                  child: ListTile(
                      leading: Image.network(
                            "${artikelProvider.artikelModel.data![index].image}",width: 100.0,height: 100.0,),
                        title:Text(
                          "${artikelProvider.artikelModel.data![index].title}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),  
                        subtitle:Text(
                            "Tanggal : ${artikelProvider.artikelModel.data![index].createdAt}"),
                      
                    ),
                  ),
                );
              
            },
            padding: const EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}