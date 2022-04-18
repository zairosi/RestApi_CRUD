import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tugas3/model/response_wisata_model.dart';
import 'package:tugas3/screen/edit_wisata.dart';
import 'package:http/http.dart' as http;
import 'package:tugas3/screen/halaman_beranda.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.data}) : super(key: key);

  final Datum data;

  Future hapusWisata(String wisataId) async {
    String _url = "http://127.0.0.1:8000/api/lists/" + wisataId;
    var response = await http.delete(Uri.parse(_url));

    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Wisata'),
        actions: <Widget>[
          IconButton(
              onPressed: () async {
                hapusWisata(data.id.toString()).then((value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanBeranda()));
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Wisata berhasil dihapus"),
                      ));
                });
              },
              icon: Icon(Icons.delete))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(data.image1Url),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                data.nama,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Gendis-Script',
                ),
              ),
            ),//Container for Title
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      Text(data.hari),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.alarm_sharp),
                      Text(data.jam),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.paid_outlined),
                      Text(data.harga),
                    ],
                  ),
                ],
              ),
            ),//Container for Icons
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                data.deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jelly-Anika',
                ),
              ),
            ),//Container for Description
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(data.image2Url),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(data.image3Url),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(data.image4Url),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EditWisata(data: data)));
        },
      ),
    );
  }
}