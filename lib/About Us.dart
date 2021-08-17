import 'package:flutter/material.dart';

import 'Nets.dart';

class About_Us extends StatelessWidget {
  const About_Us({key}) : super(key: key);

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
                    CircleAvatar(
                        radius: (100),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset('images/logo.jpg'),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Waffra',
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Who are we?',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Waffra is a company that works on giving new solutions to save and create new sources of water. \nWe offer a lot of services such as: water, electricity and agriculture.',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Legacy1(image: 'images/we.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Problems solved:',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '1)	We are making a new creative way to produce water to give people with no or low amount of water.\n\n2)	We will grow plants that are fully organic and will sell them with lower prices as it is made with less amount of water.\n\n3)	Saving water by 2.5% and generating huge amount of electricity.\n\n4)	Using low amount of electricity to desalinate sea water.',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Legacy1(image: 'images/solution.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Core Values',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '1)	We value responsibility and deep honesty, and we work tirelessly to earn our customers trust.\n\n2)	Based on our interests, we believe in diversity and inclusion.\n\n3)	We value our customer’s interests that’s why we are always working to provide them a way to success and comfort.\n\n4)	We have ambitious standards and we grow our business profitably\n\n5)	 Reduce inequality, empower and promote the social, economic and political inclusion of all, irrespective of age, sex, disability, race, ethnicity, origin, religion or economic or other status. .',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Legacy1(image: 'images/core.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '1)	We will supply 7,895,000 people with clean water per year.\n\n2)	We will provide 270 ton of tomatoes per year. \n\n3) Collaborating with Bloggers & Other Businesses\n\n4) Engaging & Educating Existing and Potential Customers.\n\n5)	Building Brand Awareness.',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Legacy1(image: 'images/goals.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Vision',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'To make everyone in Egypt have good and enough water supply.',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Mission',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Waffra offers a unique experience for people who don\'t have water, by providing them with a new source of water and growing plants with lowest amount of water.',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    Legacy1(image: 'images/vision.png'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
