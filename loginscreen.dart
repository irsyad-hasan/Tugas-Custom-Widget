import 'package:customwidget/screen/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  bool tampilPassword = true;

  showPassword(){
    setState(() {
      tampilPassword = !tampilPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "Masukkan Username",
                hintStyle: TextStyle(color: Colors.white)
              ),
              style: TextStyle(color: Colors.white),  //  Warna Isi
            ),
            TextField(
              obscureText: tampilPassword,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.white),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.white),
                suffix: IconButton(onPressed: () {
                  showPassword();
                  }, icon: Icon(tampilPassword ? Icons.visibility_off : Icons.visibility, color: Colors.white,)
                ),
              ),
              style: TextStyle(color: Colors.white),  //  Warna Isi
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  String username = usernameController.text;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen(username: username),
                    ),
                  );
                },
                child: Text("LOGIN"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
