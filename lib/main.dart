import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //function 
    Column createButton(String label, IconData icon){
      return Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
            Icon(
            icon,
            size: 35,
            color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text('CALL'),
              ),
            ],
          );
    }
    Widget titleSection = Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Strudel Bogor',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),
                ),
                const Text('Jl.Padjajaran No 1, Kota Bogor.'),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          const Text('150'),
        ],
      ),
    );
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //anak1,
         createButton("CALL", Icons.phone),
         createButton("ROUTE", Icons.near_me),
         createButton("SHARE", Icons.share),
          //anak2,
        ],
      ),
    );
    Widget reviewSection = Container(
    padding: const EdgeInsets.all(25),
   child: 
    const Text('Lorem Ipsum hanyalah teks tiruan dari industri percetakan dan penyusunan huruf. Lorem Ipsum telah menjadi teks dummy standar industri sejak tahun 1500-an, ketika seorang pencetak yang tidak dikenal mengambil sekumpulan tipe dan mengacaknya untuk membuat buku spesimen tipe. Ini telah bertahan tidak hanya lima abad, tetapi juga lompatan ke pengaturan huruf elektronik, pada dasarnya tetap tidak berubah. Itu dipopulerkan pada 1960-an dengan merilis lembar Letraset yang berisi bagian-bagian Lorem Ipsum, dan baru-baru ini dengan perangkat lunak penerbitan desktop seperti Aldus PageMaker termasuk versi Lorem Ipsum.',textAlign: TextAlign.justify));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Reviews'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: ListView(
          children: [
            //gambar,
            Image.asset(
              'images/strudel.jpg',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            //judul,
            titleSection,
            //tombol,
            buttonSection,
            //review,
            reviewSection,
          ],
        ),
      ),
    );
  }
}
