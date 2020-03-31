import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/routes/router.dart';
import 'package:instagram_ui/utilities/route_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(InstagramUI()));
}

class InstagramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: StartScreenRoute,
      theme: ThemeData.dark(),
    );
  }
}
