// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'booked_page.dart';
import 'home_page.dart';
import 'constants.dart';

class SalonPage extends StatelessWidget {
  const SalonPage({key});
  Container HairStyles(String urlvalue) {
    return Container(
      width: 150.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(urlvalue),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://www.google.ca/maps'));
            },
            icon: const Icon(
              Icons.pin_drop,
              color: Colors.blue,
              size: 35,
            ),
          ),
        ],
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
        title: Text(
          'SALON APP',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Sparkles Salon',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Poppins',
                          color: Colors.blue[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Text(
                        '100 reviews',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HairStyles('images/hair1.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  HairStyles('images/trim1.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  HairStyles('images/hair2.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  HairStyles('images/hair3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  HairStyles('images/trim2.jpeg'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blue[300],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: Colors.deepPurple[50],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Card(
                    color: Colors.deepPurple[50],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Card(
                    color: Colors.deepPurple[50],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Card(
                    color: Colors.deepPurple[50],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Card(
                    color: Colors.deepPurple[50],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue[300],
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BookedPage(),
            ),
          );
        },
        label: Text('BOOK NOW'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        shape: AutomaticNotchedShape(
            RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}
