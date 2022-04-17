import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas3/screen/halaman_beranda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Wisata',
      theme: ThemeData(),
      home: HalamanBeranda(),
    );
  }
}