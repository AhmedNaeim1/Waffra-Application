import 'package:flutter/material.dart';

import 'Nets.dart';
import 'Solar.dart';

class Current extends StatelessWidget {
  const Current({key}) : super(key: key);

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
                    Legacy(image: 'images/nets.jpeg', page: Nets()),
                    Center(
                      child: Text(
                        'Fog Harvesting',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Legacy(image: 'images/solar.png', page: Solar()),
                    Center(
                      child: Text(
                        'Solar Panels',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Legacy extends StatelessWidget {
  Legacy({
    @required this.image,
    @required this.page,
  });

  final String image;
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
        height: 400.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill,
            alignment: Alignment.centerRight,
          ),
        ),
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.only(left: 18.0),
      ),
    );
  }
}
