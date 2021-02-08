import 'package:flutter/material.dart';
import 'package:layout_grids/src/grids/band_grids/band.dart';

import '../grid.dart';

/// A grid of [Band]s (rows or columns) with a fixed count and gutter.
abstract class BandGrid extends Grid {
  final Axis axis;
  final int count;
  final double gutter;

  double get bandSize;

  const BandGrid({
    @required Color color,
    @required this.axis,
    @required this.count,
    @required this.gutter,
  }) : super(color: color);

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = List.generate(
      count,
      (i) => Flexible(
        child: Band(
          axis: axis,
          color: color,
          size: bandSize,
        ),
      ),
    );

    for (int i = children.length - 1; i > 0; --i) {
      children.insert(
        i,
        SizedBox(width: gutter, height: gutter),
      );
    }

    return Flex(
      direction: axis,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: getMainAxisAlignment(),
      children: children,
    );
  }

  MainAxisAlignment getMainAxisAlignment();
}
