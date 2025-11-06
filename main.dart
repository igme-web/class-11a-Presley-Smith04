import 'package:flutter/material.dart';

// Import page files
import 'page_home.dart';
import 'page_search.dart';
import 'page_settings.dart';
import 'page_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 11A Navigation Demo',
      theme: ThemeData(colorSchemeSeed: Colors.amber, useMaterial3: true),
      home: const Demo11aBottomNav(),
    );
  }
}


class Demo11aTabBar extends StatelessWidget {
  const Demo11aTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // must match number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Demo"),
          backgroundColor: Colors.amber[700],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [PageHome(), PageSearch(), PageSettings()],
        ),
      ),
    );
  }
}

class Demo11aBottomNav extends StatefulWidget {
  const Demo11aBottomNav({super.key});

  @override
  State<Demo11aBottomNav> createState() => _Demo11aBottomNavState();
}

class _Demo11aBottomNavState extends State<Demo11aBottomNav> {
  int currentBottomTab = 0;

  final List<Widget> bottomNavScreens = const [
    PageHome(),
    PageSearch(),
    PageSettings(),
    PageProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Nav Demo")),
      body: IndexedStack(index: currentBottomTab, children: bottomNavScreens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentBottomTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.purple,
          ),
        ],
        onTap: (value) {
          setState(() {
            currentBottomTab = value;
          });
        },
      ),
    );
  }
}
