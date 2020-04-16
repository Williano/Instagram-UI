import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/routes/router.dart';
import 'package:instagram_ui/utilities/route_constants.dart';
//import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(InstagramUI()));
}

// void main() => runApp(
//       DevicePreview(
//         builder: (context) => InstagramUI(),
//       ),
//     );

class InstagramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.of(context).locale, // <--- Add the locale
      // builder: DevicePreview.appBuilder, // <--- Add the builder
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: StartScreenRoute,
      theme: ThemeData.dark(),
    );
  }
}
