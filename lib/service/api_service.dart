import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tugas3/model/response_post_model.dart';
import 'package:tugas3/model/response_wisata_model.dart';

class ApiService {
  static final String _url = 'http://127.0.0.1:8000/api';

  static Future<List<Datum>> getWisata() async{
    List<Datum> listWisata = [];
    final response = await http.get(Uri.parse('$_url/lists'));

    if(response.statusCode == 200){
      final json = jsonDecode(response.body);
      ResponseWisata respWisata = ResponseWisata.fromJson(json);

      respWisata.data.forEach((item) {
        listWisata.add(item);
      });

      return listWisata;
    } else{
      return[];
    }
  }

  // Future<ResponsePost?> postWisata(String nama, String lokasi, String hari, String jam, String harga, String deskripsi, String image1Url, String image2Url, String image3Url, String image4Url) async {
  //   final response = await http.post(Uri.parse('$_url/lists'),body: {
  //     'nama': nama,
  //     'lokasi': lokasi,
  //     'hari': hari,
  //     'jam': jam,
  //     'harga': harga,
  //     'deskripsi': deskripsi,
  //     'image1_url': image1Url,
  //     'image2_url': image2Url,
  //     'image3_url': image3Url,
  //     'image4_url': image4Url
  //   });
  //   if (response.statusCode == 200){
  //     ResponsePost responsePost = ResponsePost.fromJson(jsonDecode(response.body));
  //     return responsePost;
  //   } else {
  //     return null;
  //   }
  // }
}