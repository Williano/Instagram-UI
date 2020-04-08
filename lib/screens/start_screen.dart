import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/undefined_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final List<Widget> screens = [
    HomeScreen(
      key: PageStorageKey('Screen0'),
    ),
    HomeScreen(
      key: PageStorageKey('Screen1'),
    ),
    HomeScreen(
      key: PageStorageKey('Screen2'),
    ),
    UndefinedScreen(
      key: PageStorageKey("Screen3"),
    ),
    UndefinedScreen(
      key: PageStorageKey("Screen4"),
    )
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  int _currentTabIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: screens[_currentTabIndex]),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() => BottomNavigationBar(
        currentIndex: _currentTabIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 29.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 29.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.plusSquare),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), title: SizedBox.shrink())
        ],
        onTap: (int index) {
          setState(
            () {
              _currentTabIndex = index;
            },
          );
        },
      );
}
