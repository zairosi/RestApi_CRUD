import 'package:flutter/material.dart';
import 'package:tugas3/model/response_wisata_model.dart';

Widget itemWisata(Datum data) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Expanded(
          flex: 1,
          child: Image.network(data.image1Url),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  data.nama,
                  style: const TextStyle(fontSize: 16.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(data.lokasi),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}