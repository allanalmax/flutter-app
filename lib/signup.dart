// ignore_for_file: unused_element, use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:salon_app_final/home_page.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignUpPage extends StatelessWidget {
  const SignUpPage({key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void register() {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));

      }).onError((error, stackTrace) {
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
            )
        );
      });
    }
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/titleimg.jpg'),
                fit: BoxFit.cover,
              )),
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                const CircleAvatar(
                  radius: 50.0,
                  // backgroundImage: AssetImage('images/button.jpg'),
                  
                )
              ])),
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: const TextSpan(
                    text: "Create account with Email and Password",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                const SizedBox(
                  height: 20.0,
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
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.deepPurple[200],
            ),
            child: GestureDetector(
              onTap: () {
                register();
              },
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          
        ],
      ),
    ));
  }
}
