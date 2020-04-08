import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram_ui/widgets/gradient_arc_painter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              print("Camera");
            },
            child: Icon(FontAwesomeIcons.camera)),
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {
                    print("Messages");
                  },
                  child: Icon(FontAwesomeIcons.paperPlane)))
        ],
      ),
      body: Center(
        child: Container(
          width: 100.0,
          height: 100.0,
          child: CustomPaint(
            painter: GradientArcPainter(
              startColor: Color(0xFFD2019A),
              endColor: Color(0xFFFF662F),
              width: 2.0,
            ),
            child: Center(
              child: ClipRRect(
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/images/error.jpg"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
