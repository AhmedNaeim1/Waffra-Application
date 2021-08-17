import 'package:flutter/material.dart';
import 'package:waffra/Nets.dart';

import 'main.dart';

class Support extends StatelessWidget {
  const Support({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Legacy1(image: 'images/donation.jpeg'),
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
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Our projects cost us above the 30 million pounds to provide and save water by approximate 1.5 billion liters per year. Help us continue and build further projects.\nEVERY DROP COUNTS!',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'SAVE WATER SAVE LIVES',
                style: TextStyle(fontSize: 35.0, color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Buttons(
                  colour: Colors.lightBlueAccent,
                  text: 'Donate 5LE',
                  page: Support()),
            ]),
          ),
        ),
      ),
    );
  }
}
