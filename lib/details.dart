import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF02aab0),
              Color(0xFF00cdac),
            ]),
          ),
        ),
        toolbarHeight: 125,
        titleSpacing: 2.5,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Details',
            style: TextStyle(
                fontSize: 80,
                color: Colors.white,
                fontFamily: 'Cursive',
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(FontAwesomeIcons.smile),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          buildCard(FontAwesomeIcons.github, 'Github',
              'https://github.com/Sushant0999', Colors.black),
          buildCard(FontAwesomeIcons.linkedin, 'LinkedIn',
              'https://www.linkedin.com/in/sushant0999/', Colors.blue.shade600),
          buildCard(
              FontAwesomeIcons.stackOverflow,
              'StackOverflow',
              'https://stackoverflow.com/users/16756820/viking09',
              Colors.black),
          buildCard(FontAwesomeIcons.discord, 'Discord', '', Colors.indigo),
          buildCard(FontAwesomeIcons.twitter, 'Twitter',
              'https://twitter.com/sushant0999', Colors.blue),
          buildCard(FontAwesomeIcons.instagram, 'Instagram',
              'https://instagram.com/v1king09', Colors.purple),
        ],
      ),
      backgroundColor: Color(0xFFf5f5f5),
    );
  }

  Widget buildCard(IconData ic, String s, String s1, Color c) => Card(
        margin: EdgeInsets.fromLTRB(10, 8, 10, 8),
        color: Colors.white,
        child: InkWell(
          splashFactory: InkSplash.splashFactory,
          onTap: () {
            setState(() {
              launch(s1);
            });
          },
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.blue,
          highlightColor: c,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 50,
                child: Icon(
                  ic,
                  size: 50,
                  color: c,
                ),
              ),
              Positioned(
                bottom: 50,
                child: Text(
                  s,
                  style: TextStyle(fontSize: 25, fontFamily: 'Open Sans Pro'),
                ),
              ),
            ],
          ),
        ),
      );
}
