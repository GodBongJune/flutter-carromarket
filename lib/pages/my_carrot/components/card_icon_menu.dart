import 'package:flutter/material.dart';
import 'package:flutter_carrot/model/icon_menu.dart';
import 'package:flutter_carrot/theme.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;

  CardIconMenu({required this.iconMenuList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          // ToDo: children:[] 인데 왜 List.generate는 []가 없는가?
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData),
          ),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17),
          SizedBox(width: 20),
          Text(title, style: textTheme().titleMedium)
        ],
      ),
    );
  }
}
