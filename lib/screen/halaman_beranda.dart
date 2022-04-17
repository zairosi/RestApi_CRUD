import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas3/model/response_wisata_model.dart';
import 'package:tugas3/screen/halaman_tambah.dart';
import 'package:tugas3/service/api_service.dart';
import 'package:tugas3/widgets/detail_wisata.dart';
import 'package:tugas3/widgets/item_wisata.dart';

class HalamanBeranda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Wisata'),
      ),
      body: GridWisata(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TambahWisata()));
        },
      ),
    );
  }
}

class GridWisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
            child: FutureBuilder<List<Datum>>(
              future: ApiService.getWisata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  List<Datum>? listWisata = snapshot.data;

                  return ListView.builder(
                    itemCount: listWisata?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(data: snapshot.data![index]);
                          }));
                        },
                        child: itemWisata(listWisata![index]),
                      );
                    },
                  );
                }
              },
            ));
  }
}