import 'package:flutter/material.dart';

import 'flex_band_grid.dart';

/// A grid of flexible columns with a fixed count, gutter, and margin.
class FlexColumnGrid extends FlexBandGrid {
  const FlexColumnGrid({
    Color? color,
    required int count,
    required double gutter,
    required double margin,
  }) : super(
          color: color,
          axis: Axis.horizontal,
          count: count,
          gutter: gutter,
          margin: margin,
        );
}
