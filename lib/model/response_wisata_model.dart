import 'dart:convert';

ResponseWisata responseWisataFromJson(String str) => ResponseWisata.fromJson(json.decode(str));

String responseWisataToJson(ResponseWisata data) => json.encode(data.toJson());

class ResponseWisata {
  ResponseWisata({
    required this.massage,
    required this.data,
  });

  String massage;
  List<Datum> data;

  factory ResponseWisata.fromJson(Map<String, dynamic> json) => ResponseWisata(
    massage: json["massage"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "massage": massage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
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
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
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
  DateTime createdAt;
  DateTime updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
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
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
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
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
