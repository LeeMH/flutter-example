import 'package:carrot_market/page/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();

    _currentPageIndex = 0;
  }

  Widget _buildBodyWidget(int index) {
    switch (index) {
      case 0:
        return const HomeWidget();
      case 1:
        return Container(
          child: const Center(
            child: Text('동네생활'),
          ),
        );
      case 2:
        return Container(
          child: const Center(
            child: Text('내근처'),
          ),
        );
      case 3:
        return Container(
          child: const Center(
            child: Text('채팅'),
          ),
        );
      case 4:
        return Container(
          child: const Center(
            child: Text('나의당근'),
          ),
        );
      default:
        return Container();
    }
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String iconName, String label) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        "assets/svg/${iconName}_off.svg",
        width: 22,
      ),
      activeIcon: SvgPicture.asset(
        "assets/svg/${iconName}_on.svg",
        width: 22,
      ),
      label: label,
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentPageIndex,
      selectedItemColor: Colors.black,
      selectedLabelStyle: const TextStyle(
        color: Colors.black,
      ),
      onTap: (int index) {
        if (kDebugMode) {
          print("클릭됨 $index");
        }
        setState(() {
          _currentPageIndex = index;
        });
      },
      items: [
        _bottomNavigationBarItem("home", "홈"),
        _bottomNavigationBarItem("notes", "동네생활"),
        _bottomNavigationBarItem("location", "내근처"),
        _bottomNavigationBarItem("chat", "채팅"),
        _bottomNavigationBarItem("user", "나의당근"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBodyWidget(_currentPageIndex),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
