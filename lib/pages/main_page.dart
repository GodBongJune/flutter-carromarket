import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot/pages/chatting/chatting_page.dart';
import 'package:flutter_carrot/pages/home/home_page.dart';
import 'package:flutter_carrot/pages/my_carrot/my_carrot_page.dart';
import 'package:flutter_carrot/pages/near_me/near_me_page.dart';
import 'package:flutter_carrot/pages/neighborhood_life/neighborhood_life_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(),
          NeighborhoodLifePage(),
          NearMePage(),
          ChattingPage(),
          MyCarrotPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: "동네생활", icon: Icon(CupertinoIcons.square_on_square)),
          BottomNavigationBarItem(
              label: "내 근처", icon: Icon(CupertinoIcons.placemark)),
          BottomNavigationBarItem(
              label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_2)),
          BottomNavigationBarItem(
              label: "나의 당근", icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}
