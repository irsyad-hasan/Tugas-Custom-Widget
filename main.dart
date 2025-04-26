import 'package:flutter/material.dart';
import 'loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SNACK ONLINE',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Colors.white, onBackground: Colors.white
        ),
      ),
      debugShowCheckedModeBanner: false, //Menghapus tulisam debug
      home: LoginScreen(),
    );
  }
}