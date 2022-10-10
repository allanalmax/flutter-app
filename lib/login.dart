// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:salon_app_final/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: unused_element
final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  const LoginPage({key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signin() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }).onError((error, stackTrace) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Container(
          padding: const EdgeInsets.all(16.0),
          height: 80.0,
          decoration: const BoxDecoration(
              color: Color(0xFFC72C41),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Text("Wrong Credentials !"),
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/loginimg.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              icon: const Icon(Icons.person),
              label: const Text(
                'Create',
                style: TextStyle(fontSize: 40),
              )
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/locate');
              },
              icon: Icon(Icons.create),
              label: Text(
                'Locate',
                style: TextStyle(fontSize: 40),
              )
            ),
          ]
        ),
      ),
    );
  }
}
