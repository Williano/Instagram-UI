import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/undefined_screen.dart';
import 'package:instagram_ui/utilities/route_constants.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreenRoute:
      return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      break;

    default:
      String name = routeSettings.arguments;
      return MaterialPageRoute(
          builder: (BuildContext context) => UndefinedScreen(
                name: name,
              ));
  }
}
