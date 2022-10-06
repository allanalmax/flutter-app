//import '../flutter_flow/flutter_flow_theme.dart';
//import '../flutter_flow/flutter_flow_util.dart';
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'booked_page.dart';
import 'home_page.dart';
import 'salon_page.dart';
import 'settings_page.dart';
//import 'package:google_fonts/google_fonts.dart';

class SalonsPage extends StatefulWidget {
<<<<<<< HEAD
  const SalonsPage({Key key}) : super(key: key);
=======
  const SalonsPage({key}) : super(key: key);
>>>>>>> f8db6c8a7cb736218d64ed4250aabd3768d023fd

  @override
  // ignore: library_private_types_in_public_api
  _SalonsPageWidgetState createState() => _SalonsPageWidgetState();
}

class _SalonsPageWidgetState extends State<SalonsPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          child: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'SALONS',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        elevation: 2,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 11,
        iconSize: 18,
        currentIndex: _currentIndex,
        backgroundColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_rounded),
            label: ('booked'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ('settings'),
            backgroundColor: Colors.blue,
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
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 640,
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F8FD),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(8, 12, 12, 12),
                          child: Container(
                            width: 340,
                            height: 325,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9F8FD),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: InkWell(
                              child: Container(
                                width: 120,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF9F8FD),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 12, 12, 12),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    1, 1, 1, 1),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                'https://yt3.ggpht.com/ytc/AMLnZu9CLRNCOWCPes6TeIrSrQo09eegXUvNd8TaENnO=s900-c-k-c0x00ffffff-no-rj',
                                                width: 300,
                                                height: 190,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment: AlignmentDirectional(
                                                -0.96, 0.72),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 0, 0),
                                              child: Text(
                                                'SPARKLES SALON',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment: AlignmentDirectional(
                                                -0.5, 1.01),
                                            child: Text(
                                              'Sparkles hair salon located at acaica mall\nkisemneti',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SalonPage()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(8, 12, 12, 12),
                          child: InkWell(
                            child: Container(
                              width: 340,
                              height: 325,
                              decoration: BoxDecoration(
                                color: Color(0xFFF9F8FD),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                width: 120,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F8FD),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 12, 12, 12),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    1, 1, 1, 1),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                'https://pbs.twimg.com/profile_images/1496459012593930240/PshMcDJG_400x400.jpg',
                                                width: 300,
                                                height: 190,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment: AlignmentDirectional(
                                                -0.96, 0.72),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 0, 0),
                                              child: Text(
                                                'GLAM ICON SALON',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment: AlignmentDirectional(
                                                -0.5, 1.01),
                                            child: Text(
                                              'Glam icon located in naguru next to olives\nrestuarant',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SalonPage()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(8, 12, 12, 12),
                          child: InkWell(
                            child: Container(
                              width: 340,
                              height: 325,
                              decoration: BoxDecoration(
                                color: Color(0xFFF9F8FD),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                width: 120,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F8FD),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 12, 12, 12),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    1, 1, 1, 1),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                'https://us.123rf.com/450wm/john79/john791803/john79180300123/98088188-girl-and-hairdressing-scissors-symbol-for-a-beauty-salon-in-gold-color.jpg?ver=6',
                                                width: 300,
                                                height: 190,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment: AlignmentDirectional(
                                                -0.96, 0.72),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 2, 0, 0),
                                              child: Text(
                                                'FANCY SALON',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Align(
                                            alignment: AlignmentDirectional(
                                                -0.5, 1.01),
                                            child: Text(
                                              'ancy salon  located in KIkoni next to olives\nrestuarant',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SalonPage()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
