import 'dart:convert';

ResponsePost responsePostFromJson(String str) => ResponsePost.fromJson(json.decode(str));

String responsePostToJson(ResponsePost data) => json.encode(data.toJson());

class ResponsePost {
  ResponsePost({
    required this.massage,
    required this.data,
  });

  String massage;
  Data data;

  factory ResponsePost.fromJson(Map<String, dynamic> json) => ResponsePost(
    massage: json["massage"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "massage": massage,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.nama,
    required this.lokasi,
    required this.hari,
    required this.jam,
    required this.harga,
    required this.deskripsi,
    required this.image1Url,
    required this.image2Url,
    required this.image3Url,
    required this.image4Url,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String nama;
  String lokasi;
  String hari;
  String jam;
  String harga;
  String deskripsi;
  String image1Url;
  String image2Url;
  String image3Url;
  String image4Url;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    nama: json["nama"],
    lokasi: json["lokasi"],
    hari: json["hari"],
    jam: json["jam"],
    harga: json["harga"],
    deskripsi: json["deskripsi"],
    image1Url: json["image1_url"],
    image2Url: json["image2_url"],
    image3Url: json["image3_url"],
    image4Url: json["image4_url"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "nama": nama,
    "lokasi": lokasi,
    "hari": hari,
    "jam": jam,
    "harga": harga,
    "deskripsi": deskripsi,
    "image1_url": image1Url,
    "image2_url": image2Url,
    "image3_url": image3Url,
    "image4_url": image4Url,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}
