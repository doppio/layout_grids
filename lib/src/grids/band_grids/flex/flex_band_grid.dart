import 'package:flutter/material.dart';

import '../band_grid.dart';

/// A grid of flexible [Band]s (rows or columns) with a fixed count, gutter, and margin.
class FlexBandGrid extends BandGrid {
  final double margin;

  const FlexBandGrid({
    Color color,
    @required Axis axis,
    @required int count,
    @required double gutter,
    @required this.margin,
  }) : super(
          color: color,
          axis: axis,
          count: count,
          gutter: gutter,
        );

  @override
  Widget build(BuildContext context) {
    bool isHorizontal = axis == Axis.horizontal;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isHorizontal ? margin : 0,
        vertical: isHorizontal ? 0 : margin,
      ),
      child: super.build(context),
    );
  }

  @override
  double get bandSize => double.infinity;

  @override
  MainAxisAlignment getMainAxisAlignment() {
    return MainAxisAlignment.spaceBetween;
  }
}
