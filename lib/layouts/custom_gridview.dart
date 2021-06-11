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
        decoration: BoxDecoration(
          color: _myColorList[random.nextInt(_myColorList.length)],
          borderRadius: BorderRadius.circular(4),
          boxShadow: const[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0,2),
              blurRadius: 6
            )
          ]
        ),
        height: random.nextInt(75).toDouble() + 200,
        margin: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Column(children: [
          Expanded(
            child: Container(),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: FlutterLogo(),
              title: Text("Card with index $index"),
              subtitle: Text("#card #index$index #flutter"),
            ),
          )
        ]),
      ),
      staggeredTileBuilder: (index) => StaggeredTile.fit(columnRatio),
    );
  }
}
