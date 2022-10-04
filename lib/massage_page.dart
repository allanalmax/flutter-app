//import '../flutter_flow/flutter_flow_theme.dart';
//import '../flutter_flow/flutter_flow_util.dart';
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'salon_page.dart';
//import 'package:google_fonts/google_fonts.dart';

class MassagePage extends StatefulWidget {
  const MassagePage({Key? key}) : super(key: key);

  @override
  _MassagePageWidgetState createState() => _MassagePageWidgetState();
}

class _MassagePageWidgetState extends State<MassagePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 650,
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
                                                'https://d2k5ihdpwrfxz.cloudfront.net/location/9166/images/onlineLogo/large.png?ts=1651487779',
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
                                                'SERENITY SPA',
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
                                              'Serenity Massage and Spa is located\nin Makerere',
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
                                                'GLAM ICON SPA',
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
                                                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/c6/63/0e/bravado-spa.jpg?w=1200&h=-1&s=1',
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
                                                'BRAVADO SPA',
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
                                              'Bravado massage spa is located in kikoni\nnext to the road',
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
