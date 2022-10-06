import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:salon_app_final/application_bloc.dart';
import 'package:salon_app_final/home_page.dart';
import 'welcome.dart';
import 'login.dart';
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
      '/home': (context) => const HomePage(),
      '/locate': (context) => const Application(),
    },
  ));
}
