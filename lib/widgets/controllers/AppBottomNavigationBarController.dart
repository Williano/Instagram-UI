import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/undefined_screen.dart';

class AppBottomNavigationBarController extends StatefulWidget {
  @override
  _AppBottomNavigationBarControllerState createState() =>
      _AppBottomNavigationBarControllerState();
}

class _AppBottomNavigationBarControllerState
    extends State<AppBottomNavigationBarController> {
  final List<Widget> screens = [
    HomeScreen(
      key: PageStorageKey('Screen1'),
    ),
    UndefinedScreen(
      key: PageStorageKey("Screen2"),
    )
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: screens[_currentTab]),
      bottomNavigationBar: _bottomNavigationBar(_currentTab),
    );
  }

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
        currentIndex: _currentTab,
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
              _currentTab = index;
            },
          );
        },
      );
}
