import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:salon_app_final/application_bloc.dart';
import 'package:salon_app_final/home_page.dart';
import 'package:salon_app_final/home_screen.dart';
import 'login_page.dart';
import 'signup.dart';
import 'firebase_options.dart';
import 'application_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const LoginPage(),
      '/signup': (context) => const SignUpPage(),
      '/home': (context) => const HomeScreen(),
      '/locate': (context) => const Application(),
    },
  ));
}
