import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
            child: Icon(Icons.camera_alt)),
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
                  child: Icon(Icons.near_me)))
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
