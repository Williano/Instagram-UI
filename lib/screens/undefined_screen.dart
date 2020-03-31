import 'package:flutter/material.dart';

class UndefinedScreen extends StatelessWidget {
  final String name;

  UndefinedScreen({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name is Not Defined"),
      ),
    );
  }
}
