import 'package:flutter/material.dart';
import '../componen/cardsnack.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key,
  required this.username,
  });
  final String username;
  @override
  State<Profilescreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.black,
          title: Text('PROFILE ${widget.username}', style: TextStyle(color: Colors.white)),
          actions: [
          ],  //  Action
        ),
        body: ListView(
          children: [
            const SizedBox(height: 0,),
            Container(color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Center(
                child: Text("SNACK YANG TELAH DIBELI",
                  style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Cardsnack(
              namaSnack: "JETZ",
              jumlahPembelian: 5,
            ),
            Cardsnack(
              namaSnack: "BENG-BENG",
              jumlahPembelian: 2,
            ),
            Cardsnack(
              namaSnack: "OREO",
              jumlahPembelian: 3,
            ),
          ],
        )
    );
  }
}

