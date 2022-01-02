import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_app/utils/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: (BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/home2.png'),
            fit: BoxFit.fill,
          ),
        )),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                      'images/avt.jpg',
                    ),
                  ),
                  Text(
                    'Sushant Raj',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontFamily: 'Cursive',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Open Sans Pro'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  TextButton(
                    child: Icon(
                      FontAwesomeIcons.github,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      launch('https://github.com/Sushant0999');
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, MyRoutes.detailsRoute);
                        });
                      },
                      child: InkWell(
                        splashColor: Colors.blue,
                        splashFactory: InkSplash.splashFactory,
                        child: Image(
                          color: Colors.white,
                          image: AssetImage('images/down.png'),
                          height: 50,
                          width: 50,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
