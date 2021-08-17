import 'package:flutter/material.dart';

class Nets extends StatelessWidget {
  const Nets({key}) : super(key: key);

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
                    Center(
                      child: Text(
                        'Mechanism:',
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'We will put nets that will convert fog into water. Its working mechanism is simple, as with the continuation of the process of condensation of water on the surface of the net, the water droplets gather with each other to form larger drops, which leads to their falling into the basin at the bottom of the net due to gravity, and then move to the storage tank. The process of water condensation on the network and the process of collecting water in the basins are completely natural processes. As for the process of transferring it to the storage tank and then to the user, it depends on the topographical nature of the area. Pumps may be used as a pump in areas with plain topography.  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Legacy1(image: 'images/nets1.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Then we will use part of this water formed from these nets to create the aeroponic process.Aeroponic systems nourish plants with nothing more than nutrient-laden mist. The concept builds off that of hydroponic systems, in which the roots are held in a soilless growing medium, such as coco coir, over which nutrient-laden water is periodically pumped. Aeroponics simply dispenses with the growing medium, leaving the roots to dangle in the air, where they are periodically puffed by specially-designed misting devices. In aeroponics systems, seeds are “planted” in pieces of foam stuffed into tiny pots, which are exposed to light on one end and nutrient mist on the other. The foam also holds the stem and root mass in place as the plants grow.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Legacy1(image: 'images/aeroponic.png'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Place:',
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'We will put nets above Hamata mountain in red sea, Egypt. We chose this place because it has a higher percentage of humidity(50%) and a high speed of wind(18km/h) comparing to other mountains. It has a height of 1977 meters. On the other hand, the aeroponic system will be below the mountain with an area of 4200 m2.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Legacy1(image: 'images/hamata.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Fixation:',
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'The CloudFisher consists of a fine-mesh net suspended within a steel frame. The net is held in place by a series of rubber expanders that also attach it to the collector at its base. The expanders “create tension on all four sides of the whole geo-grid or mesh,” “A normal approach is to try to stabilize the seam at the edges of the nets because that is where the wind impact is concentrated, but it makes better sense to distribute the wind energy across the whole surface,” The nets are positioned to allow the wind to blow the fog through the nets for maximum water collection. The water vapor in the air is trapped in the fine mesh of the net, condenses and drips down the mesh into a collector at the base. The technology is quick and easy to set up – requiring just two simple tools – and is low-maintenance. “The only parts of the CloudFisher that are likely to tear in a storm are the rubber expanders, and these are cheap and easy to replace,” . The water produced will be saved in a tank that will then be connected to pipes to the aeroponic system.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Legacy1(image: 'images/fixation.jpeg'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Legacy1 extends StatelessWidget {
  Legacy1({
    @required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(left: 18.0),
    );
  }
}
