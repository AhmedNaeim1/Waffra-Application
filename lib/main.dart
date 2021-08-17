import 'package:flutter/material.dart';
import 'package:waffra/About%20Us.dart';
import 'package:waffra/Current%20Projects.dart';
import 'package:waffra/Store.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Support.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                        radius: (100),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset('images/logo.jpg'),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: TypewriterAnimatedTextKit(
                        text: ['Waffra'],
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Buttons(
                        colour: Colors.lightBlueAccent,
                        text: 'Store',
                        page: Store()),
                    Buttons(
                        colour: Colors.lightBlueAccent,
                        text: 'Current Projects',
                        page: Current()),
                    Buttons(
                        colour: Colors.lightBlueAccent,
                        text: 'About Us',
                        page: About_Us()),
                    Buttons(
                        colour: Colors.lightBlueAccent,
                        text: 'Support Us!',
                        page: Support()),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({
    @required this.colour,
    @required this.text,
    @required this.page,
  });

  final String text;
  final Color colour;

  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return page;
            },
          ),
        );
      },
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.only(left: 18.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
