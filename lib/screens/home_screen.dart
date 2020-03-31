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
      body: Container(),
    );
  }
}
