import 'package:flutter/material.dart';
import 'package:instagram_ui/routes/router.dart';
import 'package:instagram_ui/utilities/route_constants.dart';

void main() => runApp(InstagramUI());

class InstagramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: generateRoute,
      initialRoute: HomeScreenRoute,
      theme: ThemeData.dark(),
    );
  }
}
