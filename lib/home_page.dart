// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:salon_app_final/salon_1.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'booked_page.dart';
import 'constants.dart';
import 'faqs_page.dart';
import 'home_screen.dart';
import 'login_page.dart';
import 'massage_page.dart';
import 'profile_page.dart';
import 'salon_page.dart';
import 'settings_page.dart';
import 'support_page.dart';
//import 'package:salon_proj/salon_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    void logout() {
      FirebaseAuth.instance.signOut().then(
            (value) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            ),
          );
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: const Text(
          'SALON APP',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        elevation: 2,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                  value: 0,
                  child: Text('Profile'),
                ),
                const PopupMenuItem<int>(
                  value: 1,
                  child: Text('Support'),
                ),
                const PopupMenuItem<int>(
                  value: 2,
                  child: Text('FAQs'),
                ),
                const PopupMenuItem<int>(
                  value: 3,
                  child: Text('Settings'),
                ),
                const PopupMenuItem<int>(
                  value: 4,
                  child: Text('Logout'),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              }
              if (value == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SupportPage()),
                );
              }
              if (value == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FaqsPage()),
                );
              }
              if (value == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              }
              if (value == 4) {
                logout();
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 18,
        unselectedFontSize: 18,
        iconSize: 20,
        currentIndex: _currentIndex,
        backgroundColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
            backgroundColor: Colors.blue[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_rounded),
            label: ('booked'),
            backgroundColor: Colors.blue[300],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ('settings'),
            backgroundColor: Colors.blue[300],
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BookedPage()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );
          }
        },
      ),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: const [],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 2),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12, 12, 12, 12),
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            height: 270,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.deepPurple[200],
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: kPrimaryColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        'https://images.pexels.com/photos/853427/pexels-photo-853427.jpeg?cs=srgb&dl=pexels-delbeautybox-853427.jpg&fm=jpg',
                                        width: double.infinity,
                                        height: 170,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 8, 12, 8),
                                  child: Text(
                                    'HAIR PLAITING  &',
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: Text(
                                    'CUTING',
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SalonsPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 12),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 270,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                          ),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: InkWell(
                                  child: Container(
                                    width: double.infinity,
                                    height: 270,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          color: Colors.deepPurple[200],
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              12, 12, 12, 12),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: kPrimaryColor,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                'https://post.healthline.com/wp-content/uploads/2022/03/massage-on-back-732-549-feature-thumb-732x549.jpg',
                                                width: double.infinity,
                                                height: 170,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 8, 12, 8),
                                            child: Text(
                                              'MASSAGE &',
                                              style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Text(
                                              'SPA',
                                              style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 18, 
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MassagePage()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
