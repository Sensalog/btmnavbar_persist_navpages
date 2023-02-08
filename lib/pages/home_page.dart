import 'package:btmnavbar_persist_navpages/pages/Ecommunity_page.dart';
import 'package:btmnavbar_persist_navpages/pages/account_page.dart';
import 'package:btmnavbar_persist_navpages/pages/game_page.dart';
import 'package:btmnavbar_persist_navpages/pages/setting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  PageController _pageController = PageController() ;
  List<Widget> _screens = [HomePage(),Settings(),GamePage(),EcommunityPage(),MyAccount()];
  int _selectedIndex = 0;
  void _onPagedChanged(int index){
    setState(() {
      _selectedIndex = index;
        });
  }
  void _onItemTapped(int selectedIndex) {
      _pageController.jumpToPage(selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller:  _pageController,
          children: _screens,
          onPageChanged: _onPagedChanged,
          //physics: NeverScrollableScrollPhysics(),
        ),
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: _selectedIndex,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting",),
          BottomNavigationBarItem(icon: Icon(Icons.videogame_asset),label: "Games"),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree),label:  "Ecommunity"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:  "Account",),
        ],

        selectedLabelStyle: TextStyle(fontSize: 10),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

    );
  }
}
