import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tugas3/screen/halaman_beranda.dart';
import 'package:http/http.dart'as http;
import 'package:tugas3/service/api_service.dart';

class TambahWisata extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _lokasiController = TextEditingController();
  TextEditingController _hariController = TextEditingController();
  TextEditingController _jamController = TextEditingController();
  TextEditingController _hargaController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _image1Controller = TextEditingController();
  TextEditingController _image2Controller = TextEditingController();
  TextEditingController _image3Controller = TextEditingController();
  TextEditingController _image4Controller = TextEditingController();
  Future simpanWisata() async {
    final response = await http.post(Uri.parse("http://127.0.0.1:8000/api/lists"),body: {
      "nama": _namaController.text,
      "lokasi": _lokasiController.text,
      "hari": _hariController.text,
      "jam": _jamController.text,
      "harga": _hargaController.text,
      "deskripsi": _deskripsiController.text,
      "image1_url": _image1Controller.text,
      "image2_url": _image2Controller.text,
      "image3_url": _image3Controller.text,
      "image4_url": _image4Controller.text
    });

    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Wisata"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.00),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _namaController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Nama Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Nama Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _lokasiController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Lokasi Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Lokasi Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _hariController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Hari Buka Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Hari Buka Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _jamController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Jam Buka Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Jam Buka Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _hargaController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Harga Tiket"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Harga Tiket";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _deskripsiController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Deskripsi Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Deskripsi Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _image1Controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Gambar 1 Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Gambar 1 Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _image2Controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Gambar 2 Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Gambar 2 Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _image3Controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Gambar 3 Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Gambar 3 Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.00),
                  child: TextFormField(
                    controller: _image4Controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Gambar 4 Wisata"),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Masukkan Gambar 4 Wisata";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                    simpanWisata().then((value) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanBeranda()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Wisata berhasil ditambah"),
                          ));
                    });
                  }
                }, child: Text("Simpan"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
