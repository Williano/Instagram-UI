import 'package:flutter/material.dart';

class UndefinedScreen extends StatelessWidget {
  final String name;

  UndefinedScreen({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name is Not Defined"),
      ),
    );
  }
}
