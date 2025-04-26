import 'package:flutter/material.dart';

class Cardsnack extends StatelessWidget {
  const Cardsnack({
    super.key,
    required this.namaSnack,
    required this.jumlahPembelian
  });
  final String namaSnack;
  final int jumlahPembelian;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(color: Colors.black,
          height: 300,
          width: 200,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 60, backgroundColor: Colors.white,
                        child: Icon(Icons.fastfood,size: 70, color: Colors.black,//Nambah Ikon
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$namaSnack',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("JUMLAH PEMBELIAN: $jumlahPembelian", style: TextStyle(color: Colors.white, fontSize: 20),),
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
}