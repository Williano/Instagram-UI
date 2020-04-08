import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          "Instgram",
          style: TextStyle(fontFamily: "instagram"),
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
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border(
                            top: BorderSide(width: 2, color: Colors.black45))),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border(
                            top: BorderSide(width: 1, color: Colors.black38))),
                  ),
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border(
                            top: BorderSide(width: 1, color: Colors.black38))),
                  ),
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border(
                            top: BorderSide(width: 1, color: Colors.black38))),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
