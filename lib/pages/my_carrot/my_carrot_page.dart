import 'package:flutter/material.dart';
import 'package:flutter_carrot/model/icon_menu.dart';
import 'package:flutter_carrot/pages/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_carrot/pages/my_carrot/components/my_carrot_header.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("나의 당근"),
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8.0),
          CardIconMenu(iconMenuList: iconMenu3)
        ],
      ),
    );
  }
}
