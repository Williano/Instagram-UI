import 'package:flutter/material.dart';
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
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: screens[_currentTabIndex]),
      bottomNavigationBar: _bottomNavigationBar(_currentTabIndex),
    );
  }

  Widget _bottomNavigationBar(int _currentTabIndex) => BottomNavigationBar(
        currentIndex: _currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              title: SizedBox.shrink())
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
