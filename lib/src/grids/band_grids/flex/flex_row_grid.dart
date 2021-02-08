import 'package:flutter/material.dart';
import './flex_band_grid.dart';

/// A grid of flexible rows with a fixed count, gutter, and margin.
class FlexRowGrid extends FlexBandGrid {
  const FlexRowGrid({
    Color color,
    @required int count,
    @required double gutter,
    @required double margin,
  }) : super(
          color: color,
          axis: Axis.vertical,
          count: count,
          gutter: gutter,
          margin: margin,
        );
}
