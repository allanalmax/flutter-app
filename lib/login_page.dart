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
    }).onError(
      (error, stackTrace) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Container(
              padding: const EdgeInsets.all(16.0),
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color(0xFFC72C41),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Text("Wrong Credentials !"),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage('images/loginimg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              // decoration: const BoxDecoration(
              //     image: DecorationImage(
              //   image: AssetImage('images/loginimg.jpg'),
              //   fit: BoxFit.cover,
              // )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    "Sign in to your Account",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepPurple[200],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            signin();
                          },
                          child: const Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ),
                      Expanded(child: Container()),
                      const Text("Forgot your password ?")
                    ],
                  ),
                  const SizedBox(height: 14.0),
                  RichText(
                      text: const TextSpan(
                    text: "Don't Have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepPurple[200],
                
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: const Center(
                  child: Text(
                    "Create",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ),
            const SizedBox(
              height: 18.0,
            ),
          ],
        ),
      ),
    );
  }
}
