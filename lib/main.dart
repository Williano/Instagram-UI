import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/routes/router.dart';
import 'package:instagram_ui/utilities/route_constants.dart';

void main() {
  // This app is designed only to work vertically, so we limit
  // orientations to portrait up and down.
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(InstagramUI());
}

class InstagramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: HomeScreenRoute,
      theme: ThemeData.dark(),
    );
  }
}
