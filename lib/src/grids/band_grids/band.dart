import 'package:flutter/material.dart';

/// A row or column with a fixed height/width.
class Band extends StatelessWidget {
  final Axis axis;
  final double size;
  final Color color;

  const Band({
    Key key,
    @required this.axis,
    @required this.size,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isHorizontal = axis == Axis.horizontal;

    return Container(
      color: color,
      width: isHorizontal ? size : double.infinity,
      height: isHorizontal ? double.infinity : size,
    );
  }
}
