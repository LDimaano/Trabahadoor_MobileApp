import 'package:flutter/material.dart';
import 'package:trabahadoor/screens/home/widgets/home_app_bar.dart';
import 'package:trabahadoor/screens/home/widgets/job_list.dart';
import 'package:trabahadoor/screens/home/widgets/search_card.dart';
import 'package:trabahadoor/screens/home/widgets/tag_list.dart';
import 'package:trabahadoor/screens/chat/HomeChat.dart';
import 'package:trabahadoor/screens/profile/profile.dart';
import 'package:trabahadoor/screens/search/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SearchPage(),
    const Homechat(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(
                Icons.cases_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(
                Icons.chat_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(
                Icons.person_outline,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: 20),
                  const SearchCard(),
                  const SizedBox(height: 20),
                  const TagList(),
                  const SizedBox(height: 20),
                  JobList(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
