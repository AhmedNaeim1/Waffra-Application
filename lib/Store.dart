import 'package:flutter/material.dart';
import 'package:waffra/tomato.dart';

import 'cucumber.dart';

class Store extends StatelessWidget {
  const Store({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      leading: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Club_Buttons(image: 'images/tomato.jpeg', page: tomato()),
                    Center(
                      child: Text(
                        'Tomatoes',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Club_Buttons(
                        image: 'images/cucumber.jpeg', page: cucumber()),
                    Center(
                      child: Text(
                        'Cucumbers',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Club_Buttons extends StatelessWidget {
  Club_Buttons({
    @required this.image,
    @required this.page,
  });

  final Widget page;
  final String image;
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
        height: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
