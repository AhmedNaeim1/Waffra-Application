import 'package:flutter/material.dart';

class Solar extends StatelessWidget {
  const Solar({key}) : super(key: key);

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
                      ' 	The floating subsystem includes the floating structure, pontoons, floaters, and mounting racks of the PV panels. The mooring subsystem stabilizes the position of the floating platform and automatically adjusts itself for the variation in the water level. A mooring system is made up of a mooring line and an anchor. The mooring line connects an anchor on the lake floor to the floating structure. There are two main classes of design of the floating platforms: frame arrays and independent floating’s. The frame array is common in the over 1 MW installations.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Legacy1(image: 'images/solar1.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'The system consists of rows of floats of cylindrical or rectangular section, on which the structure of PV panels’ frames is arranged as repeated arrays. The system is easy to maintain and provides better ventilation and PV generation by water effect. Independent floating’s are modular units, usually made of HDPE, which can be fixed together by connection points to form surface pontoons, on which the PV panels are mounted, using fiber-reinforced plastics. The size of the floats is an important parameter in the design of the platform. The buoyant force, which is equal to the weight of displaced fluid, must be able to balance the gross weight of the platform under all operating and environmental conditions.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Legacy1(image: 'images/solar2.png'),
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
                      ' 	We will put solar panels above Nasr Lake, Egypt. We chose this lake in particular because the presence of the sun on the lake throughout the year affects the solar panels very well, in addition to when we install the solar panels, we won\'t need fishermen or boats in the water, and Lake Nasser is distinguished by this because the presence of the High Dam, it also enjoys mild wind, low surface waves, and almost year-round sunshine.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Legacy1(image: 'images/solar4.jpeg'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Components of a floating PV system:',
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
                      ' 	Solar panels\nPlatform frame matric\nMarine cable\nMooring line\nPV mounting racks\nMaintenance area\nCombiner box\nFloating body\nMooring line\nAnchor',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    Legacy1(image: 'images/solar3.png'),
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
