
import 'package:flutter/material.dart';
import 'package:CWCFlutter/screens/words.dart';
import 'package:flutter/services.dart';

class Topics extends StatefulWidget {
  @override
  _TopicsState createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  List<String> images = [
    "images/quan_he.jpg",
    "images/animal.jpg",
    "images/Vegetables.jpg",
    "images/weather.jpeg",
    "images/Houses.jpg",
  ];

  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Words(langname),
          ));
        },
        child: Material(
          color: Colors.blue,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 10.0),
                    child: Text(
                      langname,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          customcard("People and relationships", images[0]),
          customcard("Animals", images[1]),
          customcard("Vegetables", images[2]),
          customcard("Describing the weather", images[3]),
          customcard("Houses", images[4]),
        ],
      ),
    );
  }
}
