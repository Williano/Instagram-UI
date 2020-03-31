import 'package:flutter/material.dart';
import 'package:instagram_ui/utilities/route_constants.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreenRoute:
      return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      break;

    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => UndefinedScreen());
  }
}
