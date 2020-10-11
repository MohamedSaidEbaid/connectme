import 'dart:math';

import 'package:flutter/material.dart';

class TableItem extends StatelessWidget {
  final double angle;
  final String url;
  TableItem({this.angle, this.url});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
          width: 100,
          height: 100,
          child: Image(
            image: AssetImage(url),
          )),
    );
  }
}
