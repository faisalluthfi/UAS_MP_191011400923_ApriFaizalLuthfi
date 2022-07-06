import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:artikelapp/providers/artikel_provider.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_html/flutter_html.dart';




class DetailArtikelScreen extends StatefulWidget {
  final String? title;
  final String? id;
  const DetailArtikelScreen ({this.title, this.id, Key? key}) : super(key: key);

  @override
  State<DetailArtikelScreen > createState() => _DetailArtikelScreenState();
}


class _DetailArtikelScreenState extends State<DetailArtikelScreen > {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"), 
        backgroundColor: Colors.green,
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, artikelProvider, child) {
          return SingleChildScrollView(
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        "${artikelProvider.detailArtikelModel.data![0].image}"),

                        SizedBox(height: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(color: Colors.green,spreadRadius: 3),
                          
                        ]
                      ),
                      child: Text(
                        "${artikelProvider.detailArtikelModel.data![0].title}",
                        style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Tanggal :${artikelProvider.detailArtikelModel.data![0].createdAt}",
                      
                    ),
                    SizedBox(height: 10.0),
                    Text(
                       "${ artikelProvider.detailArtikelModel.data![0].description!.replaceAll("<br />", "")}"),
                    SizedBox(height: 10.0),
                   
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
