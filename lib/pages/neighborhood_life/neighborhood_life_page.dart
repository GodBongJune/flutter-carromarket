import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot/model/neighborhood_life.dart';
import 'package:flutter_carrot/pages/components/appbar_perferred_size.dart';
import 'package:flutter_carrot/pages/neighborhood_life/components/life_body.dart';
import 'package:flutter_carrot/pages/neighborhood_life/components/life_header.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text("동네생활"),
        actions: [
          IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
              icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
              onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: LifeBody(neighborhoodLife: neighborhoodLifeList[index]),
            ),
          )
        ],
      ),
    );
  }
}
