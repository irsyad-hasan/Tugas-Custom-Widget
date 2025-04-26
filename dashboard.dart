import 'package:customwidget/profilescreen.dart';
import 'package:flutter/material.dart';
import '../componen/cardproduk.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key,
  required this.username,
  });
  final String username;
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.black,
          title: const Text("DASHBOARD", style: TextStyle(color: Colors.white)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profilescreen(username: widget.username,)),
                );
              },
              child: Text("PROFILE", style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ],  //  Action
        ),
        body: ListView(
          children: const[
            CardProduk(
              namaProduk: "KALPA",
              harga: 2000,
              stok: 10,
            ),
            CardProduk(
              namaProduk: "BISKUAT",
              harga: 1000,
              stok: 20,
            ),
            CardProduk(
              namaProduk: "OREO",
              harga: 4000,
              stok: 30,
            ),
            CardProduk(
              namaProduk: "JETZ",
              harga: 2000,
              stok: 10,
            ),
            CardProduk(
              namaProduk: "BENG-BENG",
              harga: 1000,
              stok: 20,
            ),
          ],
        )
    );
  }
}

