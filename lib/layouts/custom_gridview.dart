import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({required this.columnRatio}) : super();

  final List<Color> _myColorList = <Color>[
    Colors.amber,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Colors.indigo,
    Colors.lime,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.yellow
  ];
  final int columnRatio;

  @override
  Widget build(BuildContext context) {
    Random random = new Random();

    return StaggeredGridView.countBuilder(
      primary: false,
      crossAxisCount: 12,
      itemBuilder: (context, index) => Container(
        color: _myColorList[random.nextInt(_myColorList.length)],
        height: random.nextInt(150).toDouble() + 100,
        margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.all(8),
              child: Text("$index")),
        ),
      ),
      staggeredTileBuilder: (index) => StaggeredTile.fit(columnRatio),
    );
  }
}
