import 'package:flutter/material.dart';

import 'main.dart';

class tomato extends StatelessWidget {
  const tomato({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        body: SingleChildScrollView(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('images/tomato1.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
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
                  Center(
                      child: Text(
                    'Tomatoes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Fully organic tomatoes grown with 98% less amount of water.\n\n Price: 5.00 LE/Kilo ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                  ),
                  Buttons(
                      colour: Colors.lightBlueAccent,
                      text: 'Order Now',
                      page: tomato()),
                ]),
          ),
        ),
      ),
    );
  }
}
